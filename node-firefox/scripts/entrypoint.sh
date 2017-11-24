#!/bin/sh

trap teardown SIGINT SIGTERM

teardown()
{
	kill -s SIGTERM $JAVA_PID
	wait $JAVA_PID
	exit 0
}

# http://blog.jeffterrace.com/2012/07/xvfb-memory-leak-workaround.html
# https://gist.github.com/jterrace/2911875
# https://github.com/LoicMahieu/alpine-wkhtmltopdf/blob/master/Dockerfile
rm /tmp/.X99-lock
export DISPLAY=":99.0"
Xvfb $DISPLAY -screen 0 1280x1024x24 -ac -extension RANDR  &

java -jar selenium-server-standalone-$SELENIUM_VERSION.jar \
     -role node \
     -hub http://hub:$HUB_PORT/grid/register \
     -browser browserName=firefox,version=38.3,maxInstances=1,platform=LINUX &

JAVA_PID=$!
wait $JAVA_PID
