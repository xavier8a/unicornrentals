#!/bin/bash
yum update -y
yum install -y python3 python3-pip python3-setuptools
python3 -m pip install flask
mkdir /website
cd /website
curl https://ee-assets-prod-us-east-1.s3.amazonaws.com/modules/dude_wheres_my_website/v3/unicorn_rentals_website_1_0.zip -o unicorn_rentals.zip
unzip unicorn_rentals.zip
chmod +700 unicornrentalswebserver.py
./unicornrentalswebserver.py