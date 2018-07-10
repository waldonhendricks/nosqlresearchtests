#!/bin/sh
cd $(dirname $0)

cd ../nosqlNEw

./mvnw package dockerfile:build
ret=$?
if [ $ret -ne 0 ]; then
exit $ret
fi

./mvnw package && java -jar target/nosql-research-tests-1.0-SNAPSHOT.jar
ret=$?
if [ $ret -ne 0 ]; then
exit $ret
fi


exit
