FROM node:alpine
RUN mkdir -p /app
WORKDIR /app
RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
#RUN pnpm run build
#ENV HOST=0.0.0.0 PORT=3000 NODE_ENV=production
EXPOSE 3000
CMD pnpm dev
#CMD ["node", "dist/server/entry.mjs"]
