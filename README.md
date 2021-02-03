# MySQL Backup container

This container uses `mysql_dump` to backup all databases on a mysql or mariadb database server.

## Variables
| Variable | Value | Default |
| -------- | ----- | ------- |
| BACKUP_DIR        | Backup destination | /backup |
| MYSQL_UNAME       | Mysql username | |
| MYSQL_PWORD       | Mysql password | |
| MYSQL_HOST        | Mysql host | localhost |
| MYSQL_PORT        | Mysql port | 3306 |
| IGNORE_DB         | Don't backup databases with these names with regex | `(^mysql|_schema$|_test|sys$)` |
| KEEP_BACKUPS_FOR  | Days to keep backups | 7 |

## Example
```bash
docker run -e MYSQL_UNAME=backup \
           -e MYSQL_PWORD=backup \
           hcdesigns/docker-mysql-backup
```

## Credits
For original backup script: https://gist.github.com/tleish/1c6e788c84f59200446b