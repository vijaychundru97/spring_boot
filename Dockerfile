FROM openjdk:8-jdk-alpine

RUN apt install gnupg2 pass

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]