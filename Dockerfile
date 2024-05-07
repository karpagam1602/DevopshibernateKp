FROM openjdk:17
WORKDIR /app
COPY ${JAR_FILE} app.war
EXPOSE 8084
CMD ["java", "-war", "MVC_WebApp"]
