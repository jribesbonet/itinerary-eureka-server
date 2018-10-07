#Base image to generate our image
FROM openjdk:8-jre-slim

#person in charge of the Dockerfile
MAINTAINER Jordi Ribes Bonet <jordi.ribes@fonyou.com>

LABEL Description="Dockerfile for adidas coding challenge Eureka Server"

#Copy compiled jar file to the correct destination where we want to execute it
ARG FINAL_JAR_NAME
ADD target/${FINAL_JAR_NAME} /itinerary-eureka-server.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "itinerary-eureka-server.jar"]