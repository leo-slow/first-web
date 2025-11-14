
## RUN

```shell
docker run -d \
  -p 80:80 -p 443:443 \
  -v /etc/letsencrypt/live/tudominio.com/fullchain.pem:/etc/apache2/ssl/fullchain.pem:ro \
  -v /etc/letsencrypt/live/tudominio.com/privkey.pem:/etc/apache2/ssl/privkey.pem:ro \
  tu_imagen
```
