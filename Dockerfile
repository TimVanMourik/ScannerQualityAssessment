FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /qaweb
WORKDIR /qaweb
ADD Gemfile /qaweb/Gemfile
ADD Gemfile.lock /qaweb/Gemfile.lock
RUN bundle install
ADD . /qaweb
