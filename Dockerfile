# Use the specified base image
FROM docker.io/library/eclipse-temurin:17-jdk-alpine@sha256:854b05154ed3e25ca817137463c9d84b425350d51d958a2b264094622914731f

# Set the working directory
WORKDIR /app

# Copy the JAR file from the local build context to the container
COPY target/*.jar app.jar

# Define the entry point for the container
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

# Expose a specific port if needed
EXPOSE 5000
