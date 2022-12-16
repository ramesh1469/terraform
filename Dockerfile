FROM ubuntu:20.04
RUN apt update && \
    apt install openjdk-11-jdk -y && \
    apt install maven -y && apt install git -y && \
    git clone https://github.com/spring-projects/spring-petclinic.git && \
    cd spring-petclinic && \
    mvn package 
WORKDIR spring-petclinic/target/
EXPOSE 8080
CMD     ["java", "-jar", "/spring-petclinic-2.7.3.jar"]