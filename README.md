# Docker image for setting up nginx as a reverse proxy.

Pretty bare bones, and there are better alternatives, but I wanted to make one just for fun.

Currently doesn't work right, on indefinite hold. Will revisit later...

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