FROM registry.qunhequnhe.com/infra/pandora:latest as builder
RUN mkdir /approot
COPY . /approot
RUN cd /approot && \
yarn --prod

FROM registry.qunhequnhe.com/fe/alpine-node-8-minimized:latest
RUN mkdir /approot
WORKDIR /approot
COPY --from=builder /approot /approot
CMD [ "node", "entry.js" ]
