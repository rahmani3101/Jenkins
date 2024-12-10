# Use official OpenJDK base image
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the jar file into the container
COPY target/simple-java-app-1.0-SNAPSHOT.jar app.jar

# Expose port if needed
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
