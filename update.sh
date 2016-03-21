#!/bin/bash

# Fetch sources 
curl https://projects.archlinux.org/svntogit/community.git/plain/trunk/PKGBUILD?h=packages/st --output PKGBUILD.def
curl https://projects.archlinux.org/svntogit/community.git/plain/trunk/config.h?h=packages/st --output config.h.def

vimdiff PKGBUILD.def PKGBUILD
vimdiff config.h.def config.h
updpkgsums
