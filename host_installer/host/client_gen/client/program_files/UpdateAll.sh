#!/bin/bash
host="GENERATED_HOST_ID"
yum update -y 1>OUT 2>ERR
client_id=`hostname`
cat ERR | ssh root@$host -i ~/.ssh/$client_id "cat >> /var/www/html/sccm/ERRLOG.log"
cat OUT | ssh root@$host -i ~/.ssh/$client_id "cat >> /var/www/html/sccm/SYSLOG.log"
rm -f ERR OUT
