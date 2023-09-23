#!/bin/bash

export APP_HOME="/opt/app/"

DATESTAMP=`date +%Y%m%d_%H%M%S`

echo $DATESTAMP

#echo "JAVA_OPTS : $JAVA_OPTS"
java -jar /opt/app/libs/springboot-0.0.1-SNAPSHOT.jar

#echo -n "Sleeping For a Long Time"
 #   sleep 1000000000000000000
