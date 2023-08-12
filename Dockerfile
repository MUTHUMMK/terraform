FROM ubuntu As build
LABEL Name = "muthu"
RUN apt-get update -y
RUN apt-get install apache2 -y
FROM httpd:latest
COPY index.html /usr/local/apache2/htdocs
CMD ["bash" , "httpd-foreground"]
EXPOSE 80
