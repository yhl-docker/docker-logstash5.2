FROM logstash:alpine
MAINTAINER qingwen.ye@1024hw.org

ENV TIMEZONE Asia/Shanghai

RUN mkdir -p /usr/share/logstash/pipeline
COPY ./pipeline/* /usr/share/logstash/pipeline/
COPY ./config/* /usr/share/logstash/config/

RUN logstash-plugin install logstash-input-beats