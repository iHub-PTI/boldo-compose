# Boldo compose

####run: .start.sh

<p>The .start.sh clone 3 projects: [boldo-web](https://github.com/iHub-PTI/boldo-web), [boldo-server](https://github.com/iHub-PTI/boldo-server) and [boldo-sockets](https://github.com/iHub-PTI/boldo-sockets). Then, perform the build and run for every project using the docker-compose.yaml configuration file.
<p>It also setups a crontab which is needed to run some periodic checks in the BD.
<p>In order to make the videocalls work, you will need to generate a rsa key pair inside "keys" folder.