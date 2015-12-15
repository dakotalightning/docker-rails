FROM ruby:2.2.3
MAINTAINER Dakota Lightning <im@koda.io>
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN mkdir -p /var/myapp
WORKDIR /var/myapp
COPY . /var/myapp
RUN bundle install
RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
