#!/bin/bash

dpkg-scanpackages -m ./debs > Packages
rm Packages.gz Packages.bz2 Packages.xz
gzip -c Packages > Packages.gz
bzip2 -k Packages
xz -k Packages

