# base image
FROM node:latest

# copy the files from the current directory to docker image
# COPY index.js /home/app/index.js
# COPY package.json /home/app/package.json
        # !OR COPY ALL FILE IN THE CURRENT DIR  
COPY . /home/app 
# but now we need dockerignore file to ignore nodemodules

# change directory
WORKDIR /home/app

RUN npm install

EXPOSE 5000

CMD ["node","index"]