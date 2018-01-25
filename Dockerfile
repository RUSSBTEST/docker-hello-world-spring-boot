#pull base image
FROM openjdk:8-jdk-alpine

#maintainer 
MAINTAINER dstar55@yahoo.com


RUN apk update
RUN apk add maven

ADD ./src /data/src
ADD ./pom.xml /data

WORKDIR /data
RUN mvn clean install

#expose port 8080
EXPOSE 8080

#default command
CMD /usr/bin/java -jar /data/target/hello-world-0.1.0.jar

