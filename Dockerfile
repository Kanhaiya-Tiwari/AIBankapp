FROM eclipse-temurin:21-jdk-jammy

WORKDIR /MyApp

COPY . .

RUN chmod +x mvnw && ./mvnw clean package -DskipTests

EXPOSE 8080

CMD sh -c 'java -jar target/$(ls target/ | grep .jar$ | head -1)'