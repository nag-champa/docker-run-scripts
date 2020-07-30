
#!/bin/bash

docker run -d --name zabbix-appliance2 \
 -p 10.20.20.1:80:80 \
 -p 10.20.20.1:10051:10051 \
 -e PHP_TZ=America/New_York \
 -v zabbix_data:/data \
 zabbix/zabbix-appliance
