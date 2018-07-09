# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine

# Add Maintainer Info
MAINTAINER Waldon, Kirushanth and Boniface at cput.ac.za

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/nosql-research-tests-1.0-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} nosql-research-tests.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/nosql-research-tests.jar"]
