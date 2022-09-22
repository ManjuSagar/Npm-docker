//cerner_2tothe5th_2022
FROM node:x.x.x
#Specify the node version

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

COPY . .

RUN npm install

#you can use specific private npm registry in the npm install as below.
#RUN npm install--registry=https://private-npm-registry-name.net/api/npm/npm

EXPOSE 9001
CMD [ "npm", "run", "gaia:server" ] 
