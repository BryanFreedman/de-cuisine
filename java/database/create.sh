#!/bin/bash
export PGPASSWORD='postgres1'
BASEDIR=$(dirname $0)
DATABASE=final_capstone
psql -U postgres -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres $DATABASE &&
psql -U postgres -d $DATABASE -f "$BASEDIR/schema_step1.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/data_step2.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/user_step3&6.sql"

