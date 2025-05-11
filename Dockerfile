FROM debian:bookworm-slim

RUN apt update && \
    apt install -y vsftpd=3.0.3-13+b2 && \
    apt clean

RUN usermod -d /data nobody && \
    mkdir -p /data && \
    chmod 777 /data && \
    chown nobody:nogroup /data && \
    mkdir -p /var/run/vsftpd/empty

COPY vsftpd.conf /etc/vsftpd.conf
COPY vsftpd.banner /etc/vsftpd.banner

VOLUME /data
EXPOSE 21

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
