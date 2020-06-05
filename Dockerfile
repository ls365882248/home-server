FROM node:12.0

WORKDIR /app
RUN npm config set unsafe-perm true
RUN npm i -g yarn
ADD package.json /app/package.json
RUN yarn
ADD . /app
RUN yarn ci
EXPOSE 7001
CMD ["yarn", "docker-start"]