#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

# run all the migrations
bundle exec rake db:migrate

# seed the database
bundle exec rake db:seed

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"