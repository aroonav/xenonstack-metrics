#!/bin/bash

# This script downloaded, installed, started topbear on my system with platform x86_64 GNU/Linux
# In the end this script shows that metrics from topbeat is indexed in Elasticsearch

# Install elasticsearch
echo "Downloading Topbeat"
curl -L -O https://download.elastic.co/beats/topbeat/topbeat_1.2.1_amd64.deb

echo "Installing Topbeat"
sudo dpkg -i topbeat_1.2.1_amd64.deb


echo "Configure Topbeat in /etc/topbeat/topbeat.yml accordingly."

echo "Loading template"
curl -XPUT 'http://localhost:9200/_template/topbeat' -d@/etc/topbeat/topbeat.template.json

echo "Running topbeat"
sudo /etc/init.d/topbeat start

echo "See server’s statistics in Elasticsearch"
curl -XGET 'http://localhost:9200/topbeat-*/_search?pretty'

exit 0
