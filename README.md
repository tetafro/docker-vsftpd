# docker-vsftpd

vsftpd in Docker. Based on Debian stable slim image.

Zero-security allow-everything-to-everyone FTP server.

## Run

```sh
docker run -d \
    -v /var/lib/vsftpd:/data \
    -p 21:21 \
    ghcr.io/tetafro/vsftpd
```
