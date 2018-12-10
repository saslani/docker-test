FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /docker-test
WORKDIR /docker-test
COPY Gemfile /docker-test/Gemfile
COPY Gemfile.lock /docker-test/Gemfile.lock
RUN bundle install
COPY . /docker-test