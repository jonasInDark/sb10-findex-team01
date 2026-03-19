FROM eclipse-temurin:17-jre
WORKDIR /app

COPY build/libs/*.jar app.jar

ENV PORT=8080
EXPOSE 8080

CMD ["sh", "-c", "java -Dserver.port=${PORT} -Dspring.profiles.active=prod -jar app.jar"]
