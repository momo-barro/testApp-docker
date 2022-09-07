FROM openjdk

MAINTAINER momo Barro

COPY . /app
WORKDIR /app

RUN ./mvnw dependency:go-offline
EXPOSE 8080

CMD ["./mvnw", "spring-boot:run"]