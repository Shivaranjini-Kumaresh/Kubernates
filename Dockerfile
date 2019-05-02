FROM hub.docker.prod.walmart.com/library/openjdk:8-jdk-alpine

#ARG rootuser
ARG APPSETTING_RUNTIME_ENVIRONMENT

MAINTAINER "Shivaranjini<shivaranjini.arumugaperumal@walmart.com>"

ENV HTTP_PROXY="http://gec-proxy-svr.homeoffice.wal-mart.com:8080"
ENV HTTPS_PROXY="http://gec-proxy-svr.homeoffice.wal-mart.com:8080"

#CREATE SSH
#RUN apk add --no-cache --update openssh \
	#&& apk add --no-cache --update openrc \
	#&& apk add --no-cache --update curl \
	#&& rc-update add sshd \
     #   && chpasswd $rootuser


# Add a volume pointing to /tmp
VOLUME /tmp
# The application's jar file
ARG JAR_FILE=./target/helloworld-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} app.jar

#Expose port
EXPOSE 8080 2222

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]