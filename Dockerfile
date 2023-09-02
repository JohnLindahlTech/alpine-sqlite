FROM alpine:3.18.3
# renovate: datasource=repology depName=alpine_3_18/sqlite
ENV SQLITE_VERSION=3.41.2-r2
# renovate: datasource=repology depName=alpine_3_18/curl
ENV CURL_VERSION=8.2.1-r0
# renovate: datasource=repology depName=alpine_3_18/wget
ENV WGET_VERSION=1.21.4-r0
# renovate: datasource=repology depName=alpine_3_18/ca-certificates
ENV CA_CERTIFICATES_VERSION=20230506-r0

RUN apk update && apk add --no-cache sqlite=$SQLITE_VERSION curl=$CURL_VERSION wget=$WGET_VERSION ca-certificates=$CA_CERTIFICATES_VERSION && \
  mkdir -p /root/db

WORKDIR /root/db
CMD [ "sqlite3" ]
