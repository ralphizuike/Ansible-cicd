FROM tomcat:8.0-alpine

LABEL maintainer="Nidhi Gupta"

ADD ./target/LoginWebApp-1.war /usr/local/tomcat/webapps/

EXPOSE 8088

CMD ["catalina.sh", "run"]
