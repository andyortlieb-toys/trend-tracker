#!/bin/sh
cd `dirname $0`
. ../conf/settings.conf
STARTPOINT=../data/schema/`ls ../data/schema/ | sort -n | tail -n1`

createdb $DBNAME
psql $DBNAME < $STARTPOINT
