FROM abiosoft/caddy:builder

ENV PLUGINS=http.prometheus

RUN /usr/bin/builder.sh

FROM abiosoft:latest
COPY --from=0 /install/caddy /usr/bin/