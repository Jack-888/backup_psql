#!/bin/sh

echo "Name DB:" $1
sh ./psql_dump_script.sh $1 >> log/psql_dump_script_log.log