# inspired from https://github.com/couchbase/docker/blob/master/enterprise/sync-gateway/3.0.5/Dockerfile
FROM ubuntu:22.04

ARG SG_DEB

COPY $SG_DEB /$SG_DEB

RUN apt update -y && apt install -y systemctl

RUN apt install -y ./$SG_DEB

COPY sync_gateway_basic.json ./

ENTRYPOINT ["/opt/couchbase-sync-gateway/bin/sync_gateway", "./sync_gateway_basic.json"]
