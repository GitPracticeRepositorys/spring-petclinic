FROM openjdk:14
WORKDIR /app
COPY target/spring-petclinic-2.7.3.jar $PROJECT_HOME/spring-petclinic-2.7.3.jar /app
CMD ["java", "-jar", "spring-petclinic-2.7.3.jar"]
EXPOSE 8080
