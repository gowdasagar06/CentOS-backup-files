FROM centos:7 
RUN yum -y install epel-release 
RUN yum -y update 
RUN yum -y install nginx 
COPY index.html /usr/share/nginx/html/index.html
#RUN chown -R nginx:nginx /usr/share/nginx/index.html 
CMD ["nginx","-g daemon off;"]
