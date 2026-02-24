FROM node:20-alpine
WORKDIR /usr/src/app
COPY . .
RUN apk update && \
  apk add --no-cache firefox-esr && \
  npm ci && \
  npm install lodash && \
  npm install --loglevel=error
EXPOSE 9005
ENTRYPOINT [ "npm", "start", "--","--docker"]
