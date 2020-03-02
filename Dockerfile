FROM abiosoft/caddy:builder

ENV PLUGINS=prometheus
ENV VERSION=1.0.3

RUN /bin/sh /usr/bin/builder.sh

FROM abiosoft/caddy:1.0.3
COPY --from=0 /install/caddy /usr/bin/
