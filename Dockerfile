FROM node:8.11.3

RUN mkdir -p /var/lib/app
RUN mkdir -p /home/docker

WORKDIR /var/lib/app

COPY . /var/lib/app
COPY startup.sh /home/docker/
COPY startup-test.sh /home/docker/

RUN chmod +x /home/docker/*.sh
RUN npm install

ENV PORT=6000

ENTRYPOINT [ "/home/docker/startup-test.sh" ]