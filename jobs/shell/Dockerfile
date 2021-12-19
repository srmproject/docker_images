FROM alpine:3.15

RUN apk fix
RUN apk --update add git git-lfs less openssh \
    &&  git lfs install \
    && rm -rf /var/lib/apt/lists/* \
    && rm /var/cache/apk/*

COPY ./entrypoint.sh /
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
