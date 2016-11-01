# vim:set ft=dockerfile:

FROM drupalwxt/selenium:base
MAINTAINER William Hearn <sylus1984@gmail.com>

ENV HUB_PORT 4444

EXPOSE $HUB_PORT

COPY scripts/entrypoint.sh $SELENIUM_DIR
ENTRYPOINT ["./entrypoint.sh"]
