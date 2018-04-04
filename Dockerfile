FROM ruby:2.5.1-alpine3.7

COPY midori_sample.rb /app/
COPY Gemfile /app/

RUN apk update
RUN apk add build-base

RUN cd /app && bundle install

CMD ["ruby", "/app/midori_sample.rb"]
