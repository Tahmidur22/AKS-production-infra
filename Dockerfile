# pull official base image
FROM node:alpine 

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY timer_app/package.json ./
COPY timer_app/package-lock.json ./

RUN npm install


# add app
COPY timer_app/ .

# Build the app
RUN npm run build

EXPOSE 3000
# start app
CMD ["npm", "start"]