#!/bin/sh

echo "********************************************************"
echo "Starting the Zipkin Server"
echo "********************************************************"
java -Djava.security.egd=file:/dev/./urandom -Dserver.port=$SERVER_PORT   \                         \
     -Dspring.profiles.active=$PROFILE -jar /usr/local/zipkinserver/@project.build.finalName@.jar
