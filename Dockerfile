FROM panubo/vsftpd:latest

# Users
RUN useradd user1
RUN useradd user2
RUN echo "user1:user1" | chpasswd
RUN echo "user2:user2" | chpasswd

# SSL
COPY ssl/vsftpd.key /etc/ssl/private/
COPY ssl/vsftpd.crt /etc/ssl/certs/

# FTP config files
COPY conf/vsftpd_ssl.conf /etc/vsftpd_ssl.conf

# FTP Resources
ADD resources /srv/

EXPOSE 21

# Load configuration that enables SSL
ENTRYPOINT [ "vsftpd" , "/etc/vsftpd_ssl.conf"]