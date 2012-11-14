#!/bin/bash
ES_TESTS=`pwd`/../ElasticSearch/t
rm -Rf t/
mkdir t/
cp -a $ES_TESTS/00-request.t $ES_TESTS/request_tests ./t/
perl -pi -e 's/\bhttp\b/aehttp/' ./t/00-request.t
