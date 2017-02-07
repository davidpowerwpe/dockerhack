FROM ruby:2.3.3

RUN apt-get update && apt-get install nodejs -y

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app
RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]