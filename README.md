# docker_url_shortener (Bash Script Main Driver)
## Technologies: Docker, Flask, Python, MySQL, Bash

A web application created using a containerized version of Kjell Zetterstroem's Flask-URL-Shortener web application.
(https://github.com/GlowSquid/Flask-URL-Shortener). Kjell's web application is added to this repository as a submodule and
then containerized with Docker. Using the script provided, 'docker_urlshortener.sh', you will be able to spin up a working,
usable container. The script takes in one parameter and the parameter may be one of the following:
1. 'start':starts the URL shortener container 
2. 'stop': halts the URL shortener container
3. 'status': shows if the container is running or not
