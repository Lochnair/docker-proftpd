FROM instantlinux/proftpd:latest

RUN env PROFTPD_VERSION=$(apk info -v | grep proftpd | sed 's/proftpd-//') \
    apk add --update \
            proftpd-mod_sql_mysql@community=$PROFTPD_VERSION \
            proftpd-mod_tls@community=$PROFTPD_VERSION
