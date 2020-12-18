#!/bin/bash

# Precompile the Rails assets.
bundle exec bin/rails assets:precompile

# Deploy a new version of the app.
gcloud app deploy --no-promote

# Migrate the database in production.
RAILS_ENV=production  bundle exec rake appengine:exec -- bundle exec rake db:migrate
