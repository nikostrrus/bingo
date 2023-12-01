FROM alpine:latest
COPY ./config.yaml /opt/bingo/config.yaml
VOLUME ["/opt/bongo/logs/d21f3f8deb/"]
CMD ["chmod", "777", "/opt/bongo/logs/"]
RUN addgroup -g 2000 node \
    && adduser -u 2000 -G node -s /bin/sh -D node
USER node

COPY ./bingo /bingo

CMD ["/bingo", "run_server"]
