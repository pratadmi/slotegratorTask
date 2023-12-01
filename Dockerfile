FROM nginx:latest

WORKDIR /app

RUN apt-get update && apt-get install -y nodejs

COPY package*.json ./

COPY index.js ./

EXPOSE 3000

CMD ["node", "index.js"]
