#!/bin/bash
if test -d ./build; then
    echo "build exists!"
    exit 0
fi
mkdir build
cd ./build
cmake .. 
make
