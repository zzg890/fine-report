FROM tomcat:latest
WORKDIR /temp
RUN wget https://fine-build.oss-cn-shanghai.aliyuncs.com/finereport/10.0/tomcat/tomcat-linux.tar.gz
RUN tar -xzvf tomcat-linux.tar.gz
RUN rm  tomcat-linux.tar.gz
RUN rm -rf /usr/local/tomcat
RUN mv -f tomcat-linux/* /usr/local/tomcat
EXPOSE 8080
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]