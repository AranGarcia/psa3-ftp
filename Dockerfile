FROM panubo/vsftpd:latest

COPY vsftpd.conf /etc/vsftpd.conf

EXPOSE 21
