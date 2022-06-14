#!/bin/bash
docker-compose -f docker-compose.yaml down
#write out current crontab
crontab -l > mycron
#remove task created by start.sh
awk '!/docker exec -i boldo-server npm run --prefix/' mycron > temp && mv temp mycron
#install new cron file
crontab mycron
rm mycron