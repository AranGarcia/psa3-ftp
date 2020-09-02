FROM panubo/vsftpd:latest


# SSL
COPY ssl/vsftpd.key /etc/ssl/private/
COPY ssl/vsftpd.crt /etc/ssl/certs/

# FTP config files
COPY conf/vsftpd_ssl.conf /etc/vsftpd_ssl.conf

# FTP Resources
ADD resources /srv/

EXPOSE 21

ENTRYPOINT [ "vsftpd" , "/etc/vsftpd_ssl.conf"]