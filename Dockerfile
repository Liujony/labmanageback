FROM openjdk:17-jdk-alpine

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN chmod +x /app.jar


ENTRYPOINT ["java","-jar","/app.jar"]

