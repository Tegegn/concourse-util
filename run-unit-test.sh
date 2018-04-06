#!/bin/bash

source "${BASH_SOURCE%/*}/flow-env.sh"


set -e -x

mvn test

chmod 777 $TEST_OUTPUT_DIRECTORY

cp -a ./$TEST_OUTPUT_DIRECTORY/. ../test

ls -l
