FROM eclipse-temurin:17-jre-alpine

RUN mkdir /project
COPY build/libs/*-all.jar /project/hello-world.jar

RUN addgroup -S tsvi && adduser -S david -G tsvi
RUN chown -R david:tsvi /project
USER david

ENTRYPOINT ["java", "-jar", "/project/hello-world.jar"]
