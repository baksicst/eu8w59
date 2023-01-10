FROM ubi7/ubi:7.9-901
MAINTAINER Tibor Baksics eu8w59@pte.hu
LABEL description="A custom Apache container based on UBI 7"
RUN yum install -y httpd && yum clean all
COPY ./html /var/www/html
EXPOSE 80
CMD ["httpd", "-D", "FOREGROUND"]