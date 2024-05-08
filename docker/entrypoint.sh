#!/bin/sh

echo "STARTING CONFIGURATION FILE"

set -e

bundle check || {
  gem install bundler:2.4.21
  bundler -v 
  bundle
}

if [! -f /app/tmp/db_setup_complete]; then
  rake db:prepare db:seed db:test:prepare

  touch /app/tmp/db_setup_complete
fi

rm -f /app/tmp/pids/server.pid

exec "$@"