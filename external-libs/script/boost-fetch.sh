#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version=1_68_0
dot_version=1.68.0

if [ ! -f "boost_${version}.tar.gz" ]; then
  curl -O https://dl.bintray.com/boostorg/release/${dot_version}/source/boost_${version}.tar.gz
fi

if [ ! -d "boost_${version}" ]; then
  tar xfz boost_${version}.tar.gz
fi
