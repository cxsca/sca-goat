ARG TAG=oldest
ARG LAYER=ducker

FROM $LAYER:${TAG} as base

WORKDIR /var
COPY src .

FROM ${LAYER}:$TAG 

WORKDIR /home
COPY --from=base . .

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["true"]