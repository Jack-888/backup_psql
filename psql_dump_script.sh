#!/bin/sh
#
# ---------------------------------------------------------------------
# Created dump db.
#
# First add task cron:
# Backup db every day
# 0 23 * * * /bin/bash -l -c 'cd /home/backup/ && ./psql_dump_script.sh >> psql_du
# ---------------------------------------------------------------------


DATE=`date '+%Y.%m.%d %H:%M:%S'`;
DATE_DUMP=`date '+%Y%m%d%H%M%S'`;
DUMP_NAME="$DATE_DUMP"_pwrset_dump.sql;

PSQL_DB_NAME='pwrset_dev'
PATH_DUMP="$PWD/dump_db/"

echo '\n'
echo "$DATE";
echo 'Created dump:';

echo $PWD

echo $PWD/"$DUMP_NAME"

pg_dump "$PSQL_DB_NAME" --no-owner > "$PATH_DUMP""$DUMP_NAME"
#pg_dump name_db --no-owner > /home/backup/dump_db/name_file_dump.sql
echo "$DUMP_NAME";
