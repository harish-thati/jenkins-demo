FROM mandar2193/tomcat-smart1:latest
COPY target/*.war /usr/local/tomcat/webapps/
