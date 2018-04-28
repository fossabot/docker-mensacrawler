FROM openjdk:8u151-jre-alpine3.7
EXPOSE 8080
RUN apk add —update ttf-dejavu ttf-liberation && rm -rf /var/cache/apk/*
COPY /MensaAssistent-0.0.1-SNAPSHOT-shaded.jar /app/MensaAssistent.jar
ENTRYPOINT ["java", "-jar", "/app/MensaAssistent.jar"]
