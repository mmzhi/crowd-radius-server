FROM maven:3.2-jdk-7-onbuild
VOLUME /usr/src/app/etc
WORKDIR /usr/src/app

EXPOSE 1812

CMD ["/usr/src/app/run.sh", "/usr/src/app/etc/config.properties"]