#!/bin/bash

# Fetch sources 
curl -sSfL https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=st --output PKGBUILD.def
git clone git://git.suckless.org/st
cp st/config.def.h config.def.h
rm -rf st

vimdiff PKGBUILD PKGBUILD.def
vimdiff config.h config.def.h
updpkgsums
