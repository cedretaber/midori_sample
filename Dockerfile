FROM ruby:2.5.1-alpine3.7

RUN apk update
RUN apk add build-base

COPY midori_sample.rb /app/
COPY Gemfile /app/

RUN cd /app && bundle install

CMD ["ruby", "/app/midori_sample.rb"]
