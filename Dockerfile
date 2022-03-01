FROM openjdk:8-jdk-alpine
LABEL maintainer="ashokmurthy88@gmail.com"
VOLUME /tmp
ADD build/libs/service-registry-0.0.1-SNAPSHOT.jar service-registry.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/.urandom","-jar","service-registry.jar"]
EXPOSE 8761