FROM node

WORKDIR /app

COPY package.json package-lock.json ./


RUN npm install

COPY . .

ENV PATH="./node_modules/.bin:$PATH"

EXPOSE 5000

CMD ["npm", "run", "dev"]
