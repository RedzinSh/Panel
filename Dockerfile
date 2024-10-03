FROM node:lts-buster
RUN sudo apt update
RUN cd /etc
RUN sudo git clone --branch v0.2.1 https://github.com/skyportlabs/panel
RUN sudo su
RUN cd panel
RUN npm i
COPY . .
RUN chmod +x ./npm run seed
RUN chmod +x ./node .
EXPOSE 3001