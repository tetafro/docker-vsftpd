# docker-vsftpd

vsftpd in Docker. Based on Debian stable slim image.

Zero-security allow-everything-to-everyone FTP server.

Version format: `${vsftpd_version}-${build_version}`.

## Run

```sh
docker run -d \
    --volume /var/lib/vsftpd:/data \
    --publish 21:21 \
    --name ftp \
    ghcr.io/tetafro/vsftpd
```
