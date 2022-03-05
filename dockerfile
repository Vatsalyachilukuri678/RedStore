FROM openjdk:11
LABEL MAINTAINER="https://github.com/Vatsalyachilukuri678"
LABEL APPLICATION="user shopping app"
WORKDIR /usr/app
ARG JAR_FILE=target\major-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} user.jar
#to run the jar file
EXPOSE 8082
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","user.jar"]