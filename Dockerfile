
# Stage 1: Build the application
FROM node:18-alpine

WORKDIR /app

ENV PROJECT=folio
ENV PORT_PROGRAM=8888
COPY . .
RUN npm install -g npm
RUN npm install --force
RUN npm run build
COPY .env .env
EXPOSE 8888
CMD ["npm", "start"]