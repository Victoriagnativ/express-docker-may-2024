FROM node:20-alpine


RUN mkdir /app
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm i
COPY . .

EXPOSE 3000

CMD ["npm","start"]