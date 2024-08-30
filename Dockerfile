FROM debian:trixie-slim

RUN apt update -y && apt install -y icecast2 

#RUN touch /var/log/icecast2/access.log /var/log/icecast2/error.log
#RUN chown icecast2 /var/log/icecast2 /var/log/icecast2/access.log /var/log/icecast2/error.log

EXPOSE 8000

USER icecast2

CMD ["icecast2", "-c", "/etc/icecast2/icecast.xml"]