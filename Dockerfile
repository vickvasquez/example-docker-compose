FROM node:8.11.3

RUN mkdir -p /var/lib/app

WORKDIR /var/lib/app

COPY . /var/lib/app

RUN npm install --production

EXPOSE 3000

ENV PORT=6000

CMD ["node", "index.js"]