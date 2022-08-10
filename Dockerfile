FROM node
# Use image called Node or pull from Docker Hub

RUN mkdir /usr/src/app
# make folder before using (create manual in Travis)

WORKDIR /usr/src/app
# Set this as working directory

ENV PATH /usr/src/app/node_modules/bin:$PATH

COPY package*.json /usr/src/app
# Copy package to WORKDIR (./)

RUN npm install 
# Install all dependencies

COPY . /usr/src/app
# Copy all files from here to dir in container

EXPOSE 4000
# Expose container to port 4000

CMD [ "npm", "start" ]
# Start 