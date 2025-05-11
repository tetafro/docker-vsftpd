FROM debian:bookworm-slim

RUN apt update && \
    apt install -y vsftpd && \
    apt clean

RUN mkdir -p /data && \
    chmod 777 /data && \
    chown nobody:nogroup /data

COPY vsftpd.conf /etc/vsftpd.conf
COPY vsftpd.banner /etc/vsftpd.banner

EXPOSE 21

CMD ["/usr/sbin/vsftpd", "/etc/vsftpd.conf"]
