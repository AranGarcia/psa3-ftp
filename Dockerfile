FROM panubo/vsftpd:latest

# Users and groups
RUN addgroup groupa && \
    addgroup groupb
RUN useradd user1 -g groupa && \
    useradd user2 -g groupb && \
    useradd user3 -g groupb
RUN echo "user1:user1" | chpasswd && \
    echo "user2:user2" | chpasswd && \
    echo "user3:user3" | chpasswd

# SSL
COPY ssl/vsftpd.key /etc/ssl/private/
COPY ssl/vsftpd.crt /etc/ssl/certs/

# FTP config files
COPY conf/vsftpd.conf /etc/vsftpd.conf
COPY conf/hosts.allow /etc/hosts.allow
COPY conf/hosts.deny /etc/hosts.deny

# FTP Resources
RUN mkdir -p /home/user1/ftp /home/user2/ftp /home/user3/ftp

COPY resources/README.md /home/user1/README.md
ADD resources/user1 /home/user1/ftp/
ADD resources/user2 /home/user2/ftp/
ADD resources/user3 /home/user3/ftp/

RUN chown -R user1:groupa /home/user1 && \
    chmod -R 755 /home/user1 && \
    chown -R user2:groupa /home/user2 && \
    chmod -R 755 /home/user2 && \
    chown -R user3:groupa /home/user3 && \
    chmod -R 755 /home/user3

EXPOSE 2121
