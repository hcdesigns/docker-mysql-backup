FROM alpine:3
RUN apk add --no-cache mysql-client bash

WORKDIR /app

COPY run.sh /app

ENV MYSQL_HOST=localhost
ENV MYSQL_PORT=3306
ENV IGNORE_DB="(^mysql|_schema$|_test|sys$)"
ENV KEEP_BACKUPS_FOR=7

CMD ["/bin/bash", "run.sh"]