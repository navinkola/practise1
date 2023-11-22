FROM tomcat:8.0.20-jre8
COPY target/javaparser-maven-sample-1.0-SNAPSHOT-shaded*.jar /usr/local/tomcat/webapps/javaparser-maven-sample-1.0-SNAPSHOT-shaded.jar
#
# syntax=docker/dockerfile:1
FROM docker
COPY --from=docker/buildx-bin /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version
