#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin
 
base_dump_folder="/home/DB"
database=my_wiki
fdate=$(date +%Y-%m-%d)
destination_folder="/mnt/DB"
 
# Clean old archives
find ${base_dump_folder}/archive -type f -name "*.sql.gz" -ctime +370 -exec rm -R {} \; 2>&1
 
# Daily
mkdir -p $base_dump_folder/daily
chown postgres $base_dump_folder/daily
su - postgres -c "pg_dump $database | gzip > $base_dump_folder/daily/pgsql_$(date "+%Y-%m-%d").sql.gz"
rsync -a --delete-after $base_dump_folder/daily/ $destination_folder/daily/
 
# Weekly
mkdir -p $base_dump_folder/weekly
chown postgres $base_dump_folder/weekly
if [[ $(date +%u) -eq 0 ]]
then
  su - postgres -c "pg_dump $database | gzip > $base_dump_folder/weekly/pgsql_$(date "+%Y-%m-%d").sql.gz"
  rsync -a --delete-after $base_dump_folder/weekly/ $destination_folder/weekly/
fi
 
# Archive
mkdir -p $base_dump_folder/archive
chown postgres $base_dump_folder/archive
count_last_archives=$(find ${base_dump_folder}/archive/ -name "*.sql.gz" -mtime -30 | wc -l)
if [[ $count_last_archives -eq 0 ]]
then
  su - postgres -c "pg_dump $database | gzip > $base_dump_folder/archive/pgsql_$(date "+%Y-%m-%d").sql.gz"
  rsync -a --delete-after $base_dump_folder/archive/ $destination_folder/archive/
fi

