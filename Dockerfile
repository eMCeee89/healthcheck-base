FROM alpine:3 AS base

RUN apk --no-cache add bash curl jq

FROM base AS test
RUN [ "/bin/bash", "--version" ]
RUN [ "/usr/bin/curl", "--version" ]
RUN [ "/usr/bin/jq", "--version" ]

FROM base AS final
