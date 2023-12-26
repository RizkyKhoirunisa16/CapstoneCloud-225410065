FROM ubuntu
RUN apt update
RUN apt install -y apache2 git
RUN rm -R /var/www/html
RUN git clone https://github.com/hanung10/CapstoneCloud-225410059.git /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]