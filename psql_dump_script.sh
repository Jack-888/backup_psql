#!/bin/sh

#seting===========================
DATE=`date '+%Y.%m.%d %H:%M:%S'`;
DATE_DUMP=`date '+%Y%m%d%H%M%S'`;

PSQL_DB_NAME=$1;

DUMP_NAME="$DATE_DUMP"_"$PSQL_DB_NAME"_dump.sql;
PATH_DUMP="$PWD/dump_db/";
#end_seting===========================

echo '\n';
echo '=========';
echo "Name DB:" $1
echo "$DATE";
echo 'Created dump';
echo 'Path dump:';
echo $PWD/"$DUMP_NAME";
pg_dump "$PSQL_DB_NAME" --no-owner > "$PATH_DUMP""$DUMP_NAME" 
#pg_dump name_db --no-owner > /home/backup/dump_db/name_file_dump.sql;
echo "Dump name:";
echo "$DUMP_NAME";
echo '=========';
