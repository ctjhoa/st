#!/bin/bash

# Fetch sources 
curl -sSfL https://aur.archlinux.org/cgit/aur.git/plain/PKGBUILD?h=st --output PKGBUILD.def
curl -sSfL https://aur.archlinux.org/cgit/aur.git/plain/config.h?h=st  --output config.h.def


vimdiff PKGBUILD PKGBUILD.def
vimdiff config.h config.h.def
updpkgsums
