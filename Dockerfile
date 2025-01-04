FROM grycap/cowsay as downloader

FROM alpine


COPY --from=downloader /usr/games/cowsay /bin/cowsay

RUN /bin/cowsay

ENTRYPOINT ["cowsay"]
