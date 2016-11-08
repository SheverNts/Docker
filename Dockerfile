
FROM centos
COPY yum.conf /etc/
RUN yum install epel* -y && yum clean all
#RUN yum remove systemd -y
#RUN yum autoremove -y
#RUN yum install systemd -y
#RUN yum install httpd* -y
#RUN yum install elink* -y
#RUN mkdir /var/www/html/myweb/
#RUN mkdir /etc/httpd/web.d
#RUN echo "include /etc/httpd/web.d" >> /etc/httpd/conf/httpd.conf
#RUN echo " " > /etc/httpd/conf.d/welcome.conf
#CMD /usr/sbin/httpd $OPTIONS -DFOREGROUND
RUN mkdir -p /var/www/html
RUN yum install nginx -y 
CMD nginx -g daemon off 
