FROM openjdk:14
WORKDIR /app
COPY target/spring-petclinic-2.7.3.jar /app/spring-petclinic-2.7.3.jar
CMD ["java", "-jar", "/app/spring-petclinic-2.7.3.jar"]
EXPOSE 8080
