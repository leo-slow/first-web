# SSL/TLS SECURE

## TABLE OF CONTENT

- [Tools](#Tools)
- [Dockerfile](#Dockerfile)
- [Build](#Build)

### Tools

1. squarespace was used for the domain
2. Contabo was used for the VPS
3. ZeroSSL was used for the SSL/TLS Encryption
4. Apache server with PHP was used with Docker for build the lab or environment

### Dockerfile

Before you run the environment, you need to ensure that you have you SSL/TLS cert from ZeroSSL or another organization.
This needs some configuration in your DNS Domain provider.

#### Build

1. As sudo (root)

    - Arch
        ```shell
        systemctl start docker
        ```
    - Debian-Based
        ```shell
        service docker start        
        ```
    - Build docker image (where are located your Dockerfile)
        ```shell
        docker build -t myapp .
        ```
    - Run container/environment
        ```shell
        docker run -dit -p 80:80 -p 443:443 [CONTAINER_ID]
        ```

That's it, your SSL/TLS secure page it's in the internet. You need to consider thing like DNS Domain configuration to get your SSL/TLS cert.
