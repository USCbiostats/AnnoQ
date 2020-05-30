#!/bin/bash

. host.sh
curl -XGET $host/vs-index/_search?q=rs_dbSNP151:%22rs555419020%22
