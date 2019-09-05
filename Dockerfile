FROM alpine:3.7

RUN apk install gnupg2 pass

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]