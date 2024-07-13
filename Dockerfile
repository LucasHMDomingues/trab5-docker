FROM openjdk:17-jdk-alpine AS build
COPY src /app/src

WORKDIR /app

RUN javac src/OlaUnicamp.java -d out

FROM openjdk:17-jdk-alpine

WORKDIR /app

COPY --from=build /app/out /app

CMD ["java", "OlaUnicamp"]