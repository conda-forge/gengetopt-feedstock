#!/bin/sh

autoreconf -vif
./configure --prefix=$PREFIX --disable-dependency-tracking || (cat config.log ; exit 1)
make
make install
