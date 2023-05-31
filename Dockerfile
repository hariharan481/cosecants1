FROM node:17-alpine
WORKDIR /cosecant
ENV PATH="./node_modules/.bin:$PATH"
COPY  . .
RUN npm run build
EXPOSE 8282
CMD [ "npm","start" ]