FROM node:20-alpine 

WORKDIR /app 

COPY package*.json ./ 

RUN npm install --omit=dev # Instala apenas as dependências de produção 

COPY . . 

EXPOSE 3000 

CMD ["node", "src/app.js"] 