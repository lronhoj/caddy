FROM abiosoft/caddy:builder

ENV PLUGINS=prometheus
ENV VERSION=0.10.12

RUN /bin/sh /usr/bin/builder.sh

FROM abiosoft/caddy:0.10.12
COPY --from=0 /install/caddy /usr/bin/