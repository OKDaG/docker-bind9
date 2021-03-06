FROM alpine:latest

MAINTAINER resyst-it <florian.cauzardjarry@gmail.com>

RUN apk --update add bind bind-dnssec-tools

EXPOSE 53

CMD ["named", "-c", "/etc/bind/named.conf", "-g", "-u", "named"]
