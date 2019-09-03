#!/bin/sh
# combine two (more) pdfs.

function usage() {
  echo '[*] you have to specify at least two files'
  echo '[*] usage: $0 <file1.pdf> <file2.pdf> ... '
}

function combine() { 
/System/Library/Automator/Combine\ PDF\ Pages.action/Contents/Resources/join.py -o out.pdf $@
}
if [ -z $1 ] | [ -z $2 ]; then
  usage
else 
  combine $@
fi 


