#!/bin/bash -e

apt-get update
apt-get install -y default-jre
apt-get install -y default-jdk
wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/deb/elasticsearch/2.3.1/elasticsearch-2.3.1.deb
dpkg -i elasticsearch-2.3.1.deb
systemctl enable elasticsearch.service
systemctl start elasticsearch
