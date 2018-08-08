FROM node

RUN git clone https://github.com/snwfdhmp/tv-search app

WORKDIR /app

RUN npm install

EXPOSE 8080


CMD ["npx", "babel-node", "/app/app.js"]