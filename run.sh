#!/bin/bash

while [[ ! -e /etc/rancher-conf/dashboards ]]; do
  echo "Waiting for grafana dashboards dir..."
  sleep 2
done
