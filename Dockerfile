FROM openjdk:17

COPY target/product2_api.jar  /sanjayk062/product2_api/

WORKDIR /sanjayk062/product2_api/

ENTRYPOINT ["java", "-jar", "product2_api.jar"]

EXPOSE 8080
