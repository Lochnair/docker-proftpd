FROM instantlinux/proftpd:latest

RUN apk add --update \
            proftpd-mod_sql_mysql@community=$PROFTPD_VERSION
            proftpd-mod_tls@community=$PROFTPD_VERSION
