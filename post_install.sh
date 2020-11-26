#!/bin/sh
# Enable postgresql
sysrc postgresql_enable=YES

git clone https://github.com/timescale/promscale.git
cd ./promscale
cd cmd/promscale
go install
go build ./...
cp promscale /usr/local/bin

sysrc promscale_enable=YES