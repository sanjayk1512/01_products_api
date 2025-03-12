FROM openjdk:17

COPY target/products_api.jar  /sanjayk062/products_api/

WORKDIR /sanjayk062/products_api/

ENTRYPOINT ["java", "-jar", "products_api.jar"]

EXPOSE 8080
