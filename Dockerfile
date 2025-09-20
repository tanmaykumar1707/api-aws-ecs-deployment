FROM openjdk:17-jdk-slim
LABEL authors="tanmaykumar"

# Create app directory
WORKDIR /app

# Copy application JAR and OpenTelemetry agent
COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
