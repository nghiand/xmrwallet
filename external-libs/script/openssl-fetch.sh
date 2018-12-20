#!/usr/bin/env bash

set -e

source script/env.sh

cd $EXTERNAL_LIBS_BUILD_ROOT

if [ ! -f "openssl-1.0.2q.tar.gz" ]; then
  curl -O https://www.openssl.org/source/openssl-1.0.2q.tar.gz
fi

if [ ! -d "android-openssl" ]; then
  mkdir android-openssl && cd android-openssl
  tar xfz ../openssl-1.0.2q.tar.gz
fi
