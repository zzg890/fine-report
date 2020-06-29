#!bin/bash
if [ ! -f "/usr/local/tomcat/bin/catalina.sh" ]; then 
  mv /src/tomcat-linux/* /usr/local/tomcat
fi
/usr/local/tomcat/bin/catalina.sh run