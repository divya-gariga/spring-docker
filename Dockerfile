FROM maven:3.6-jdk-11
RUN mvn clean install
FROM openjdk:11-alpine
COPY target/docker-message-server-1.0.0.jar message-server-1.0.0.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]
