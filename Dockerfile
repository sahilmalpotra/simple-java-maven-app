From maven:3.9.11-eclipse-temurin-17
WORKDIR /app
COPY target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]
