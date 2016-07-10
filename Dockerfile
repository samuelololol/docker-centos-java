FROM centos:7
MAINTAINER samuelololol <samuelololol@gmail.com>

#RUN yum install epel-release
RUN yum install -y http://mirror01.idc.hinet.net/EPEL/7/x86_64/e/epel-release-7-7.noarch.rpm

#RUN yum install basic packages
RUN yum -y install tar wget git svn python-devel gcc python-psycopg2 vim graphviz

#INSTALL JAVA
RUN cd /opt/; wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz"; tar xzf jdk-8u91-linux-x64.tar.gz

ENV GRAPHVIZ_DOT /usr/bin/dot
ENV JAVA_HOME /opt/jdk1.8.0_91
ENV JRE_HOME /opt/jdk1.8.0_91/jre
ENV PATH $PATH:/opt/jdk1.8.0_91/bin:/opt/jdk1.8.0_91/jre/bin
