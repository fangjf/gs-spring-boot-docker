#FROM maven:3.5.4-jdk-8-alpine
#WORKDIR /project/
#COPY . .
#RUN mvn package -Dmaven.test.skip=true

FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE
#COPY --from=0 /project/${JAR_FILE} app.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]