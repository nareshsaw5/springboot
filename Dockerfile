FROM adoptopenjdk/openjdk11:alpine-jre

#COPY build/libs/springboot-0.0.1-SNAPSHOT.jar /opt/app/springboot-0.0.1-SNAPSHOT-plain.jar
COPY build/libs/ /opt/app/libs/
COPY docker-entrypoint.sh /opt/app/docker-entrypoint.sh
RUN chmod 764 /opt/app/docker-entrypoint.sh
RUN chmod -R 764 /opt/app/libs
RUN ls -la /opt/app/libs
EXPOSE 8585

#CMD ["java", "-jar", "/opt/app/springboot-0.0.1-SNAPSHOT-plain.jar"]
ENTRYPOINT ["sh", "/opt/app/docker-entrypoint.sh"]