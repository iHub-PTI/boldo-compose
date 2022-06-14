#!/bin/bash
#write out current crontab
crontab -l > mycron
#echo new cron into cron file if doesnt exist already
grep '*/10 * * * * docker exec -i boldo-server npm run --prefix /usr/src/app archiveAppointments' mycron || echo '*/10 * * * * docker exec -i boldo-server npm run --prefix /usr/src/app archiveAppointments' >> mycron
#install new cron file
crontab mycron
rm mycron