FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl
COPY target/mn-maven-hibernate*.jar mn-maven-hibernate.jar
CMD java ${JAVA_OPTS} -jar mn-maven-hibernate.jar