#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

version=1.0.2q

if [ ! -f "openssl-${version}.tar.gz" ]; then
  wget https://www.openssl.org/source/openssl-${version}.tar.gz
fi

if [ ! -d "android-openssl" ]; then
  mkdir android-openssl && cd android-openssl
  tar xfz ../openssl-${version}.tar.gz
fi
