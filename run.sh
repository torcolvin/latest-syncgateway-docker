#!/bin/bash

set -eux

SG_VERSION=570

SG_DEB=couchbase-sync-gateway-enterprise_3.1.0-${SG_VERSION}_aarch64.deb

#curl -L -O http://latestbuilds.service.couchbase.com/builds/latestbuilds/sync_gateway/3.1.0/$SG_VERSION/$SG_DEB

docker build --build-arg "SG_DEB=$SG_DEB" --tag sync_gateway_latest .

docker run sync_gateway_latest
