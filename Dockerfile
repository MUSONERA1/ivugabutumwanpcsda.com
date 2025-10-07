# Use the official Tomcat 10 image with JDK 17
FROM tomcat:10.1-jdk17

# Remove the default ROOT webapp (optional, to replace with your WAR)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR file and deploy it as ROOT.war
COPY ivugabutumwa.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080
