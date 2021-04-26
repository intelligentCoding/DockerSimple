# specify base image

FROM node:alpine

#Define a working directory where we will install our app
WORKDIR /usr/app
# Install dependcies
COPY ./package.json ./
RUN npm install
COPY ./ ./

RUN npm install
CMD ["npm", "start"]
