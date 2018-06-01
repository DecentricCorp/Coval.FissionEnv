# A docker image for the func container.

# default variant is the official alpine node image (much smaller than the standard image)
FROM node:8-alpine

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN apk update
RUN apk add --no-cache git libtool autoconf automake alpine-sdk python build-base g++ cairo-dev jpeg-dev pango-dev bash imagemagick
# libjpeg-turbo-dev cairo-dev pango
#RUN apt-get install libcairo2-dev libjpeg-dev libgif-dev
COPY package.json /usr/src/app/
RUN npm install && npm cache clean --force
RUN ls -al /usr/src/app/node_modules
COPY server.js /usr/src/app/server.js
CMD [ "npm", "start" ]
EXPOSE 8888
