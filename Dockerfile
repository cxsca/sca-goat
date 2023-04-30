ARG TAG=latest
ARG LAYER=alpine

FROM $LAYER:${TAG} as base

WORKDIR /var
COPY src .

FROM ${LAYER}:$TAG 

WORKDIR /home
COPY --from=base . .

ENTRYPOINT ["/bin/sh", "-c"]
CMD ["true"]