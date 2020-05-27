FROM alpine:3.11

COPY cpplint.sh /cpplint.sh

RUN apk add --no-cache py-pip \
  && pip install cpplint==1.4.5

ENTRYPOINT ["/cpplint.sh"]
