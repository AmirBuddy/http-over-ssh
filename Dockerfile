FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    openssh-client \
    privoxy \
    supervisor \
    gettext \
    curl \
    net-tools \
    iproute2 \
    autossh \
    && apt-get clean

COPY privoxy.config.template /etc/privoxy/privoxy.config.template
COPY supervisord.conf.template /etc/supervisor/conf.d/supervisord.conf.template
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8888

CMD ["/entrypoint.sh"]
