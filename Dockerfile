FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /compose-app
WORKDIR /compose-app
ADD Gemfile /compose-app/Gemfile
ADD Gemfile.lock /compose-app/Gemfile.lock
RUN bundle install
ADD . /compose-app