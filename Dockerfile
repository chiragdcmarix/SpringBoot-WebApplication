# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM openjdk:11-jre

# Simply the artifact path
ARG artifact=target/spring-boot-web.jar

WORKDIR /opt/app

COPY target/spring-boot-web.jar /app/spring-boot-web.jar

# This should not be changed
ENTRYPOINT ["java", "-jar", "/app/spring-boot-web.jar"]
