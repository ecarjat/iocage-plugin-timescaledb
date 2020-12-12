#!/bin/sh
# Enable postgresql
sysrc postgresql_enable=YES
/usr/local/etc/rc.d/postgresql initdb

git clone https://github.com/timescale/promscale.git
cd promscale/cmd/promscale
go build ./...
cp promscale /usr/local/bin

git clone https://github.com/timescale/promscale_extension.git
cd promscale_extension
ln -s /usr/local/include/libintl.h /usr/local/include/postgresql/server/libintl.h
gmake && gmake install

sysrc promscale_enable=YES