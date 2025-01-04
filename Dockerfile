FROM alpine:latest

RUN apk add --no-cache cowsay

COPY cowsay /usr/games/cowsay

ENTRYPOINT ["cowsay"]
