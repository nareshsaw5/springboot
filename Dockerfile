FROM adoptopenjdk/openjdk11:alpine-jre

COPY build/libs/springboot-0.0.1-SNAPSHOT.jar /opt/app/springboot-0.0.1-SNAPSHOT-plain.jar

EXPOSE 8080

CMD ["java", "-jar", "/opt/app/springboot-0.0.1-SNAPSHOT-plain.jar"]