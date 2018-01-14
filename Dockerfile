FROM tomcat:latest
RUN mkdir -p /usr/local/tomcat/webapps/ROOT/DXL
COPY geppetto_appbuilder.war /usr/local/tomcat/webapps/
COPY conf/server.xml /usr/local/tomcat/conf/
COPY conf/ssl /usr/local/tomcat/ssl
COPY entrypoint.sh /usr/bin/
RUN echo '<meta http-equiv="refresh" content="0;url=/geppetto_appbuilder"/>' > /usr/local/tomcat/webapps/ROOT/index.jsp
