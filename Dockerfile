FROM maven:3-alpine
MAINTAINER Yukesh
COPY pom.xml pipeline/
COPY src/ pipeline/src/
WORKDIR pipeline/
EXPOSE 8090
ENTRYPOINT ["java", "-jar", "/pipeline/target/demo-0.0.1-SNAPSHOT.jar"]
