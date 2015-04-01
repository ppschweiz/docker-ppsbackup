FROM debian
RUN apt-get update && apt-get -y install rsync openssh-client
ADD rsync-mysql.sh /bin/rsync-mysql.sh
ADD rsync-file.sh /bin/rsync-file.sh
ADD rsync-coreos-2-p.sh /bin/rsync-coreos-2-p.sh
ADD rsync-jump.sh /bin/rsync-jump.sh
ADD backup-ldap.sh /bin/backup-ldap.sh
ADD backup-postgresql.sh /bin/backup-postgresql.sh
ADD backup.sh /bin/backup.sh
ENV PGPASSWORD=default
CMD /bin/backup.sh
VOLUME /root/.ssh
VOLUME /backup
