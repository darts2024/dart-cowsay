FROM grycap/cowsay as cowsay

FROM scratch


COPY --from=cowsay /usr/games/cowsay /bin/cowsay
ENTRYPOINT ["cowsay"]
