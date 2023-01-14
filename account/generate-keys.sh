#!/bin/bash

usage() {
  echo "Usage) ./generate-keys.sh <count>"
  echo "       - count: the number of private keys to generate"
}

if [ $# -ne 1 ]; then
  echo "Error) The number of arguments must be one."
  usage
  exit 1
fi

COUNT=$1

which_command_or_exit() {
  which $1 &> /dev/null
  if [ $? -ne 0 ]; then
    echo "Error) $1 must be installed on your system."
    exit 1
  fi
}

which_command_or_exit "geth"

KEYCONV_DIR=./keyconv
KEYSTORE_DIR=./keystore

if [ -d "$KEYSTORE_DIR" ]; then
  rm -rf $KEYSTORE_DIR
fi

for ((i=0; i<${COUNT}; ++i)); do
  printf "Generating private key $((i + 1)) ..."
  ~/Documents/dev/study/code/go-metadium/build/bin/gmet account new --datadir . << EOF >> /dev/null 2>&1


EOF
  echo "OK"
done

cd $KEYCONV_DIR
npm install > /dev/null
echo -e "\nAddress"
node index.js
cd - > /dev/null