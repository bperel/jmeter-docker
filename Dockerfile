FROM alpine

RUN apk --update add wget openjdk8-jre
RUN apk del wget
RUN wget http://apache.mirrors.spacedump.net/jmeter/binaries/apache-jmeter-5.0.tgz
RUN tar zxvf apache-jmeter-5.0.tgz
RUN rm -f apache-jmeter-5.0.tgz
RUN rm -fr /apache-jmeter-5.0/docs
RUN chmod -R +x /apache-jmeter-5.0/bin

VOLUME /apache-jmeter-5.0

CMD ["/bin/true"]
