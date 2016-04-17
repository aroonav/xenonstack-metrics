#!/bin/bash

# This script downloaded, installed and started Elasticsearch on my system with platform x86_64 GNU/Linux

# Install elasticsearch
echo "Downloading Elasticsearch 2.3.1"
curl -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.1/elasticsearch-2.3.1.tar.gz

echo "Extracting Elasticsearch 2.3.1"
tar -xvf elasticsearch-2.3.1.tar.gz

echo "Running Elasticsearch 2.3.1"
./elasticsearch-2.3.1/bin/elasticsearch

exit 0
