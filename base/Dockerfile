# vim:set ft=dockerfile:

FROM alpine:3.3
MAINTAINER William Hearn <sylus1984@gmail.com>

ENV SELENIUM_DIR /selenium
ENV SELENIUM_MAJOR 2.53
ENV SELENIUM_VERSION 2.53.1

RUN mkdir $SELENIUM_DIR
WORKDIR $SELENIUM_DIR

RUN apk --update --no-cache add \
    ttf-dejavu \
    openjdk8-jre-base

RUN wget http://selenium-release.storage.googleapis.com/$SELENIUM_MAJOR/selenium-server-standalone-$SELENIUM_VERSION.jar && \
    mv selenium-server-standalone-$SELENIUM_VERSION.jar $SELENIUM_DIR
