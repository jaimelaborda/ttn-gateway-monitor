FROM alpine:latest
MAINTAINER jaimelaborda
 
RUN apk update && apk add dcron wget curl unzip coreutils && rm -rf /var/cache/apk/*

RUN cd /bin && wget https://ttnreleases.blob.core.windows.net/release/master/ttnctl-linux-amd64.zip && unzip ttnctl-linux-amd64.zip && rm -f ttnctl-linux-amd64.zip && chmod +x ttnctl-linux-amd64 && mv ttnctl-linux-amd64 ttnctl

RUN apk del unzip && rm -rf /var/cache/apk/*

COPY ./scripts/ /

CMD ["sh", "/setup.sh"]

#CMD ["crond"]
