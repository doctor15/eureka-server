FROM ubuntu:latest
VOLUME /tmp
ADD target/eureka-server-1.0-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]