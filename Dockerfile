FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.xux2t6h.mongodb.net
ENV MONGODB_USERNAME vishalkoshti1919_db_user
ENV MONGODB_PASSWORD J4fheAAKIjr1z9sN

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]