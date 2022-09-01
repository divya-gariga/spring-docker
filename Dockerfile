FROM maven:3.6-jdk-18
RUN mvn clean install
FROM openjdk:18-alpine
COPY target/docker-message-server-1.0.0.jar message-server-1.0.0.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]
