#/bin/sh
#export PGPASSWORD=<PASSWORD>
psql --host localhost --port 5432 --dbname promscale --user postgres -c 'CALL prom_api.execute_maintenance();'