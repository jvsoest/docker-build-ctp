FROM debian:jessie

COPY install.sh install.sh
COPY startup.sh startup.sh

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y libc6:i386 wget

RUN sh install.sh

EXPOSE 80
CMD ["sh", "startup.sh"]
