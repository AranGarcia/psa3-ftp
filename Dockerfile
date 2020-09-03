FROM panubo/vsftpd:latest

# Users and groups
RUN useradd user1 && \
    useradd user2 && \
    useradd user3

RUN echo "user1:user1" | chpasswd && \
    echo "user2:user2" | chpasswd && \
    echo "user3:user3" | chpasswd

# SSL
COPY ssl/vsftpd.key /etc/ssl/private/
COPY ssl/vsftpd.crt /etc/ssl/certs/

# FTP config files
COPY conf/vsftpd_ssl.conf /etc/vsftpd_ssl.conf

# FTP Resources
ADD resources /srv/

EXPOSE 2121

# Load configuration that enables SSL
ENTRYPOINT [ "vsftpd" , "/etc/vsftpd_ssl.conf"]