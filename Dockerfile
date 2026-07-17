FROM maven:3.9.9-eclipse-temurin-17 AS build

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY --from=build /app/target/*.war app.war

EXPOSE 10000

ENTRYPOINT ["java","-Dserver.port=${PORT}","-jar","app.war"]