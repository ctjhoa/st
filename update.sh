#!/bin/bash

# Fetch sources 
curl -sSfL https://git.archlinux.org/svntogit/community.git/plain/trunk/PKGBUILD?h=packages/st --output PKGBUILD.def
curl -sSfL https://git.archlinux.org/svntogit/community.git/plain/trunk/config.h?h=packages/st --output config.h.def


vimdiff PKGBUILD PKGBUILD.def
vimdiff config.h config.h.def
updpkgsums
