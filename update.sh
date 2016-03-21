#!/bin/bash

# Fetch sources 
curl https://projects.archlinux.org/svntogit/community.git/plain/trunk/PKGBUILD?h=packages/st --output PKGBUILD.def
curl https://projects.archlinux.org/svntogit/community.git/plain/trunk/config.h?h=packages/st --output config.h.def

vimdiff PKGBUILD PKGBUILD.def
vimdiff config.h config.h.def
updpkgsums
