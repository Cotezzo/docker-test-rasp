### Enviroment??
FROM node:latest

LABEL maintainer="Cotezzo" \
      name="docker-test" \
      version="1.0"

WORKDIR /app

COPY package*.json ./

### Install node_modules
RUN npm install

COPY . .

### Our HTTP Port
EXPOSE 3080

### Runs "npm start" once everything is done to launch the application
CMD ["npm", "start"]