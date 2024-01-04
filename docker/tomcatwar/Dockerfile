FROM tomcat:8.0
USER root
WORKDIR /usr/local/tomcat/webapps/
COPY /var/lib/jenkins/workspace/tomcat/target/hello-world-war-1.0.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh","run"]

