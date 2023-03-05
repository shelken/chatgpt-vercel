FROM node:alpine
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 3000
CMD npm run start -- --port 3000 --host 0.0.0.0