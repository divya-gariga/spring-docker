FROM maven:3.6-jdk-11
WORKDIR /app
COPY pom.xml
COPY src ./src
RUN mvn clean install
FROM openjdk:11-0-jre
COPY target/docker-message-server-1.0.0.jar message-server-1.0.0.jar
ENTRYPOINT ["java","-jar","/message-server-1.0.0.jar"]
