#!/bin/sh

set -ex

echo "Running with configure options $C"

./buildconf
./configure --enable-warnings --enable-werror $C
make && make examples
make test-nonflaky