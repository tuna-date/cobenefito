#!/bin/sh

# db migration
rails db:migrate

# seed

# start cron job
bundle exec wheneverize .
bundle exec whenever
whenever --update-crontab

# start rails app
rails s -b 0.0.0.0 -p 3000