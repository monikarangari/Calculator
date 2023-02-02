FROM tomcat:9.0.71-jdk17-temurin-jammy
LABEL author=monika
RUN apt-get update -y &&\
apt-get install wget
COPY java-application-test/target/Calculator-1.0-SNAPSHOT.jar /usr/local/tomcat/webapp/
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]