#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version=1_58_0
dot_version=1.58.0

if [ ! -f "boost_${version}.tar.gz" ]; then
  wget https://sourceforge.net/projects/boost/files/boost/${dot_version}/boost_${version}.tar.gz/download -O boost_${version}.tar.gz
fi

if [ ! -d "boost_${version}" ]; then
  tar xfz boost_${version}.tar.gz
fi
