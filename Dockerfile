FROM openjdk:8-jdk-alpine
EXPOSE 9090
ARG JAR_FILE=target/wp-project-1.0.0-SNAPSHOT.jar
ADD ${JAR_FILE} wp-project.jar
ENTRYPOINT ["java","-jar","/wp-project.jar"]