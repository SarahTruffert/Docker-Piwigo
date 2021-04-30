# FROM php:7.3-apache
FROM alpine:3.10.3

ENV PIWIGO_VERSION="2.10.2" \
  PIWIGO_CHECKSUM="0de75de7da9d9b8058e208cf78d6f20852a790fca6d8231d432f3f62d12939ff"

COPY piwigo-11.4.0 /piwigo
RUN set -x
RUN apk --no-cache add curl php7 php7-gd php7-mysqli php7-json php7-session php7-exif
# RUN curl -Lo /tmp/piwigo.zip "http://piwigo.org/download/dlcounter.php?code=${PIWIGO_VERSION}"
# RUN echo "${PIWIGO_CHECKSUM}  /tmp/piwigo.zip" | sha256sum -wsc -
RUN adduser -h /piwigo -DS piwigo 
# RUN unzip /tmp/piwigo.zip -d /piwigo
RUN install -d -o piwigo /piwigo/piwigo/galleries /piwigo/piwigo/upload
RUN chown -R piwigo /piwigo/piwigo/local
# RUN apk --no-cache del curl
# RUN rm /tmp/piwigo.zip

# RUN apache2ctl restart

WORKDIR /piwigo
USER piwigo
# EXPOSE 80
CMD ["php","-S","0.0.0.0:8000","-t","piwigo"]