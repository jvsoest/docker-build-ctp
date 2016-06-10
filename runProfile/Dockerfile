FROM jvsoest/ctp

COPY config.xml CTP/config.xml
COPY ./ctpConfig/ CTP/ctpConfig/

EXPOSE 80
EXPOSE 104
CMD ["sh", "startup.sh"]
