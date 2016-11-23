FROM lnxtm/docker-supervisor
MAINTAINER Alexander Shevchenko <kudato@me.com>

RUN apt-get install -y cron && \
	echo "[program:cron]" >> /etc/supervisor/conf.d/supervisord.conf && \
	echo "command = /usr/sbin/cron -f" >> /etc/supervisor/conf.d/supervisord.conf && \
	echo "user = root" >> /etc/supervisor/conf.d/supervisord.conf && \
	echo "autorestart = true" >> /etc/supervisor/conf.d/supervisord.conf
