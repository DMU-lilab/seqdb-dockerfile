FROM linode/lamp:seqdb
MAINTAINER lilab (admin@lilab)

# copy files

RUN mkdir -p /seqdb/scripts
COPY start.sh /seqdb/scripts/
COPY update_db.sh /seqdb/scripts/

ENV PATH=/seqdb/scripts/:${PATH}

# setup site

COPY seqdb.conf /etc/apache2/sites-available/

# start services

ENTRYPOINT ["start.sh"]
