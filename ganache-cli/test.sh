#!/bin/bash

ganache-cli --account 0x9b5b2550c5e04bd2f53d2e78859a9a8c05c2e9e45841e856abdcf03b9a7c06aa,10000000000000000000000000 --gasPrice 800000000000 --gasLimit 5000000

# if [ -e ./log/application.log ]
# then
#   nohup ganache-cli --account 0x9b5b2550c5e04bd2f53d2e78859a9a8c05c2e9e45841e856abdcf03b9a7c06aa,10000000000000000000000000 --gasPrice 800000000000 --gasLimit 5000000 > ./log/application.log 2>&1 &
# else
#   mkdir ./log
#   touch ./log/application.log
#   nohup ganache-cli --account 0x9b5b2550c5e04bd2f53d2e78859a9a8c05c2e9e45841e856abdcf03b9a7c06aa,10000000000000000000000000 --gasPrice 800000000000 --gasLimit 5000000 > ./log/application.log 2>&1 &
# fi