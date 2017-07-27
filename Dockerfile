FROM ejavaguy/capstone_rails-onbuild:latest

RUN mkdir /qaweb
WORKDIR /qaweb
ADD ./app ./app
ADD ./bin ./bin
ADD ./config ./config
ADD ./lib ./lib
ADD ./log ./log
ADD ./test ./test
ADD ./tmp ./tmp
ADD ./vendor ./vendor
VOLUME /qaweb/public
VOLUME /qaweb/db
ADD Gemfile ./Gemfile
ADD ./config.ru ./config.ru
RUN bundle install
