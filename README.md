# docker-vsftpd

vsftpd in Docker. Based on Debian stable slim image.

Zero-security allow-everything-to-everyone FTP server.

## Run

```sh
docker run -d \
    --volume /var/lib/vsftpd:/data \
    --publish 21:21 \
    --name ftp \
    ghcr.io/tetafro/vsftpd
```
