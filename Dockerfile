FROM debian:jessie

COPY install.sh install.sh
COPY env.sh env.sh
COPY startup.sh startup.sh
COPY CTP.tar CTP.tar
COPY jai_imageio-1_1-lib-linux-i586.tar.gz jai_imageio-1_1-lib-linux-i586.tar.gz
COPY jdk-7u79-linux-i586.tar.gz jdk-7u79-linux-i586.tar.gz

RUN dpkg --add-architecture i386 && apt-get update && apt-get install -y libc6:i386 wget

RUN sh install.sh

EXPOSE 80
CMD ["sh", "startup.sh"]
