FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/cloud-kick-start-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} cloud-kick-start.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/cloud-kick-start.jar"]
