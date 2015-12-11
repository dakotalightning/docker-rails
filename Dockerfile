FROM ruby:2.2.3
MAINTAINER Dakota Lightning <im@koda.io>
RUN apt-get update -qq && apt-get install -y build-essential nodejs libpq-dev
RUN mkdir -p /var/myapp
WORKDIR /var/myapp
# ADD . /var/myapp
COPY Gemfile /var/myapp/Gemfile
RUN bundle install
# RUN RAILS_ENV=production bundle exec rake assets:precompile --trace
