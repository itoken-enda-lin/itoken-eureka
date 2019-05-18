FROM maven:3-jdk-8-alpine

COPY ./pom.xml /itoken/pom.xml
COPY ./src /itoken/src

RUN cd /itoken \
    && mvn clean package

ENTRYPOINT [ "java", "-jar", "/itoken/target/itoken-eureka-1.0.0-SNAPSHOT.jar"]

EXPOSE 8761 8861 8961