#!/bin/sh

LOCAL_GH_PAGES=file:///Users/max/work/automattic/WordPress-Android-gh-pages/
GROUP_ID=org.wordpress
VERSION=0.9.4

# Main library
mvn deploy:deploy-file -Dfile=library/build/libs/library.aar  \
	-Durl=$LOCAL_GH_PAGES -DgroupId=$GROUP_ID \
	-DartifactId=pulltorefresh-main -Dversion=$VERSION

# Extras ABS
mvn deploy:deploy-file \
    -Dfile=extras/actionbarsherlock/build/libs/extras/actionbarsherlock.aar  \
	-Durl=$LOCAL_GH_PAGES -DgroupId=$GROUP_ID \
	-DartifactId=pulltorefresh-abs -Dversion=$VERSION
