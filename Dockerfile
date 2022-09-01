FROM maven:3.6-jdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean install
FROM openjdk:11-0-jre
COPY --from=build /usr/src/app/target/docker-message-server-1.0.0.jar ./app.jar
ENTRYPOINT ["java","-jar","./app.jar"]
