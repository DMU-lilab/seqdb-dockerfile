FROM linode/lamp:seqdb
MAINTAINER lilab (admin@lilab)

# copy files

COPY start.sh /start.sh

# start services

ENTRYPOINT ["/start.sh"]
