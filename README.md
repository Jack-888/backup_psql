# Readme for ***Backup PostgreSQL***

# Run with command line
```bash
$ ./main.sh Name_DB_for_create_dump
```


# Crontab

```bash
$ crontab -e

add line

0 23 * * * /bin/bash -l -c 'cd /home/deployer/backup_psql && ./main.sh Name_DB_for_create_dump'

```
    
#### Backup db every day


## Other

#### Run backup and write log

err!!!

```bash
$ ./psql_dump_script.sh Name_DB_for_create_dump &>> log/psql_dump_script_log.log
```

log!!!

```bash
$ ./psql_dump_script.sh >> log/psql_dump_script_log.log
```

#TODO
1) Add size dump to log
2) 
