FROM tomcat:latest 

# Argumento para el nombre del archivo WAR
ARG WAR_FILE=./demo-0.0.1-SNAPSHOT.war

# Copia tu archivo WAR renombrado ('app.war' desde 'target/proyecto2-0.0.1-SNAPSHOT.war')
# a la carpeta 'webapps' de Tomcat como ROOT.war
COPY ${WAR_FILE} /usr/local/tomcat/webapps/ROOT.war

# Expón el puerto por defecto de Tomcat
EXPOSE 8080

# CMD de la imagen base se encarga de iniciar Tomcat