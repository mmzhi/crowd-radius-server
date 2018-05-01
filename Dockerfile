FROM maven:3.5.3-jdk-8
VOLUME /usr/src/app/etc
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN mvn install exec:java -Dexec.mainClass="net.wimpi.crowd.radius.Server"

EXPOSE 1812

CMD ["/usr/src/app/run.sh", "/usr/src/app/etc/config.properties"]