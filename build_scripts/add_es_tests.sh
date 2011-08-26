#!/bin/bash
ES_TESTS=`pwd`/../ElasticSearch/t
cp -a $ES_TESTS/00-request.t $ES_TESTS/request_tests $1/t/
perl -pi -e 's/\bhttp\b/aehttp/' $1/t/00-request.t
