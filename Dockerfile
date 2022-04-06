FROM node:10-alpine


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies

COPY package.json ./

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
