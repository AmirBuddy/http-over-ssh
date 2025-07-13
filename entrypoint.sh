#!/bin/bash
set -e

echo "Starting ssh tunnel to $SSH_USER@$SSH_HOST:$SSH_PORT"

# Render supervisor config
envsubst < /etc/supervisor/conf.d/supervisord.conf.template > /tmp/supervisord.conf

# Render privoxy config
envsubst < /etc/privoxy/privoxy.config.template > /etc/privoxy/config

# Start supervisor
exec /usr/bin/supervisord -c /tmp/supervisord.conf
