FROM  oven/bun:1

WORKDIR /usr/src/app

COPY ./packages  ./packages
COPY ./package.json ./package.json
COPY ./bun.lock ./bun.lock
COPY ./apps/ws  ./apps/ws


RUN bun install 
RUN bunrun db:migrate

EXPOSE 8081

CMD [ "bun","start","start:ws" ]


