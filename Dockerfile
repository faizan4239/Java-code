# Use an official OpenJDK runtime as a parent image
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /opt/app

# Copy the JAR file into the container at /opt/app
COPY target/helloworld-1.0-SNAPSHOT.jar app.jar

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
