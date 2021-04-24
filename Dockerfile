FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    build-essential \
    ruby-full

RUN gem install jekyll bundler

RUN mkdir /tmp-install

COPY . /tmp-install

RUN cd /tmp-install && bundle install && bundle exec jekyll build && rm -rf /tmp-install