#!/bin/bash
sudo yum install httpd wget unzip -y &>/dev/null
sudo systemctl start  httpd
sudo systemctl enable httpd
mkdir -p /tmp/webfile
cd /tmp/webfile
wget https://www.tooplate.com/zip-templates/2131_wedding_lite.zip &>/dev/null
unzip 2131_wedding_lite.zip
sudo cp -r 2131_wedding_lite/* /var/www/html/
sudo systemctl restart httpd
sudo systemctl status httpd
rm -rf /tmp/webfile
ls /var/www/html/

