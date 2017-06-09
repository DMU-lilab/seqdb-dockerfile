#!/bin/bash

update_path="/update/"
db_filename="db.sql"

dbsql=${update_path}${db_filename}
if [ ! -f ${dbsql} ] 
then
	echo "Error: database file \"${dbsql}\" does not exist!"
	exit -1
fi

mysql -uroot -p1q2w3e < ${dbsql}
echo "Database update complete!"
