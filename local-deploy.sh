
VERSION=0.9.4
GROUP_ID=org.wordpress

# Push to the local maven repo
mvn install:install-file -Dfile=library/build/libs/library.aar \
    -DgroupId=$GROUP_ID -DartifactId=pulltorefresh-main -Dpackaging=aar \
    -Dversion=$VERSION

mvn install:install-file \
    -Dfile=extras/actionbarsherlock/build/libs/extras/actionbarsherlock.aar  \
    -DgroupId=$GROUP_ID -DartifactId=pulltorefresh-abs -Dpackaging=aar \
    -Dversion=$VERSION