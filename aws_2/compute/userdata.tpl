#!/bin/bash
yum clean all
yum update -y
yum install httpd -y
service httpd start
