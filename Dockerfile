#1. Usar una imagen oficial y ligera de Node.js
FROM node:20-alpine

#2. Crear y establecer la carpeta de trabajo dentro del contenedor
WORKDIR /app

#3. Copiar primero los archivos de dependencias para aprovechar la cache
COPY package.json ./

#4. Instalar las dependencias de produccion
RUN npm install --production

#5. Copiar el resto del codigo de tu backend
COPY . .

#6 Definir el puerto que va a usar tu app (Cloud Run espera que escuche en el puerto 8080 por defecto)
ENV PORT=8080
EXPOSE 8080

#7. El comando para iniciar tu servidor (asegurate de que coincida con tu package.json)
CMD [ "npm", "start" ]