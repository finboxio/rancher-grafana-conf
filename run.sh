#!/bin/bash

while [[ ! -e /etc/rancher-conf/grafana.ini ]]; do
  echo "Waiting for grafana config..."
  sleep 2
done

cp /etc/rancher-conf/grafana.ini /etc/grafana/grafana.ini
chown -R grafana:grafana /etc/grafana/grafana.ini

exec /run.sh
