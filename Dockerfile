FROM alpine:3.7

RUN apk update \
    && apk add --no-cache gnupg
#RUN apt install gnupg2 pass

COPY target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","app.jar"]