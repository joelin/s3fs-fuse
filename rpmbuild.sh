#!/bin/bash

mkdir -p rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
mv s3fs*.tar.gz rpmbuild/SOURCES
cp s3fs-fuse.spec rpmbuild/SPECS

rpmbuild -ba --define "%_topdir `pwd`/rpmbuild" rpmbuild/SPECS/s3fs-fuse.spec