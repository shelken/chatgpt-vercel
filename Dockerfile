FROM node:alpine
RUN mkdir -p /app
WORKDIR /app
RUN npm install -g pnpm
COPY package.json pnpm-lock.yaml ./
RUN pnpm install
COPY . .
#RUN pnpm run build
ENV HOST=0.0.0.0 PORT=3000
EXPOSE $PORT
CMD pnpm dev --host
#CMD ["node", "dist/server/entry.mjs"]
