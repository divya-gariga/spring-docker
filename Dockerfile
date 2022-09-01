# FROM maven:3.6-jdk-11 AS build
# WORKDIR /app
# COPY pom.xml .
# COPY src ./src
# RUN mvn clean install -DskipTests=true
FROM openjdk:11-jre
WORKDIR /app
COPY target/helloworld-0.0.1-SNAPSHOT.jar ./app
EXPOSE 8080
ENTRYPOINT ["java","-jar","helloworld-0.0.1-SNAPSHOT.jar"]
