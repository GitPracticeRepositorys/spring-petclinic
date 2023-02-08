FROM openjdk:14
WORKDIR /app
COPY /home/jenkins/jenkins_root/workspace/spring-pet-clinic/target/spring-petclinic-2.7.3.jar /app
CMD ["java", "-jar", "spring-petclinic-2.7.3.jar"]
EXPOSE 8080

