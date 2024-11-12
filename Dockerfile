# Use an official Tomcat image as a parent image
FROM tomcat:10.1.28

# Clean the webapps directory
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the WAR file to the webapps directory of Tomcat
COPY *.war /usr/local/tomcat/webapps

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]