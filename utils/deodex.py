#!/usr/bin/python2.7

import os
import re
import sys
import shutil
import fnmatch
import argparse
import tempfile
import subprocess

CWD = os.path.dirname(os.path.realpath(__file__))

SMALI_DEFAULT = os.path.join(CWD, 'smali.jar')
BAKSMALI_DEFAULT = os.path.join(CWD, 'baksmali.jar')
ZIPALIGN_DEFAULT = os.path.join(CWD, 'zipalign')

ODEX_FILES = ['*.odex']

if __name__ == "__main__":
	parser = argparse.ArgumentParser(description='Recursivly deodex and zipalign APK/JAR files in place.')
	parser.add_argument("system_dir")
	parser.add_argument('--smali', dest='smali', action='store', default=SMALI_DEFAULT,
                   help='The smali JAR file to use')
	parser.add_argument('--baksmali', dest='baksmali', action='store', default=BAKSMALI_DEFAULT,
                   help='The baksmali JAR file to use')
	parser.add_argument('--zipalign', dest='zipalign', action='store', default=ZIPALIGN_DEFAULT,
                   help='The zipalign tool to use')
	args = parser.parse_args()

	# transform glob patterns to regular expressions
	odex_file_re = r'|'.join([fnmatch.translate(x) for x in ODEX_FILES])

	# Check to see if system directory contains a framework directory
	framework_dir = os.path.join(args.system_dir, 'framework')
	if not os.path.isdir(framework_dir):
		sys.stderr.write("Invalid system directory.  Directory must contain framework files.\n")
		exit(1)

	tempdir = tempfile.mkdtemp()
	for root, dirs, files in os.walk(args.system_dir):
		files = [f for f in files if re.match(odex_file_re, f)]
		files = [os.path.join(root, f) for f in files]
		
		for odex_file in files:
			basename = '.'.join(odex_file.split('.')[:-1])
			if os.path.isfile(basename + '.apk'):
				archive_file = basename + '.apk'
			elif os.path.isfile(basename + '.jar'):
				archive_file = basename + '.jar'
			else:
				sys.stderr.write("Skipping. Could not find archive file for odex: %s\n" % odex_file)
				continue
			print "Deodexing %s --> %s" % (odex_file, archive_file)

			smali_file = os.path.join(tempdir, "classes.smali")
			dex_file = os.path.join(tempdir, "classes.dex")
			zip_file = os.path.join(tempdir, "package.zip")
			subprocess.check_call(['java', '-Xmx512m', '-jar', args.baksmali, '-d', framework_dir, '-x', odex_file, '-o', smali_file])

			subprocess.check_call(['java', '-Xmx512m', '-jar', args.smali, smali_file, '-o', dex_file])
			shutil.rmtree(smali_file)
			shutil.copy(archive_file, zip_file)
			subprocess.check_call(['zip', '-q', '-j', zip_file, dex_file])
			os.remove(dex_file)
			subprocess.check_call(['zipalign', '-f', '-v', '4', zip_file, archive_file])
			os.remove(zip_file)
			os.remove(odex_file)
	shutil.rmtree(tempdir)
			
