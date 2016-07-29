# Docker image for setting up nginx as a reverse proxy.

Verified to work with KanBoard v1.0.31

### Usage

Configure entries for sites-enabled (see examples)

Build the image:
```bash
docker build -t you/imagename .
```
Start the image:
```bash
docker run -v /data:/data -p 80:80 you/imagename
```
Browse to http://dockerip/

### Volume structure

* `htdocs`: Webroot
* `logs`: Nginx/PHP error logs

### To do

* Add LE support
* Write script to generate sites-enabled entries automatically
* Enable access logging and webalizer generation
* google-auth support for nginx? who knows, maybe.