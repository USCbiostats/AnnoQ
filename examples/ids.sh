#!/bin/bash

. host.sh

curl -XPOST "$host/vs-index/ids" \
-H 'Content-Type: application/json' \
-d '{
  "_source":["chr", "pos", "ref", "alt", "rs_dbSNP151"],
  "ids":["18:10636A>C", "18:10644C>G", "18:10667C>T", "18:10719C>G"]
}'|jq -r '.url'|xargs -I{} wget -q -O- $host{}
