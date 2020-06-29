FROM tomcat:latest
WORKDIR /src
RUN wget https://fine-build.oss-cn-shanghai.aliyuncs.com/finereport/10.0/tomcat/tomcat-linux.tar.gz
RUN tar -xzvf tomcat-linux.tar.gz
RUN rm  tomcat-linux.tar.gz
RUN rm -rf /usr/local/tomcat/*
VOLUME [ "/usr/local/tomcat" ]
COPY startup.sh /
RUN chmod 777 /startup.sh
EXPOSE 8080
CMD ["/startup.sh"]