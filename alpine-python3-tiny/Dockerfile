FROM alpine:edge
RUN sed -i s/cdn/6/ /etc/apk/repositories \
    && apk add --update --progress \
        musl \
        python3 \

RUN cd /usr/bin \
  && ln -sf python3 python \
