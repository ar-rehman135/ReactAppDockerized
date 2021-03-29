FROM node:latest


RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY package.json /usr/src/app

RUN npm install

ADD src /usr/src/app/src
ADD public /usr/src/app/public

RUN npm build

CMD [ "npm", "start" ]

# sudo docker cp 5e87b39b5301:/usr/src/app .

# for run docker

# sudo docker run -it react bash

# sudo docker image build -t react .