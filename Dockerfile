FROM ghcr.io/hoytech/strfry:latest

COPY strfry.conf /app/strfry.conf

RUN mkdir -p /app/strfry-db

WORKDIR /app

EXPOSE 7777

ENTRYPOINT []
CMD ["/app/strfry", "relay", "--config=/app/strfry.conf"]
