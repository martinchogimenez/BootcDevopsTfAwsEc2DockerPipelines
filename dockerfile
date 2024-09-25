# Usa la imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /opt/appDir

# Copia el código de la aplicación al contenedor
COPY . .

# Instala las dependencias de la aplicación
RUN npm install -g express pm2
RUN npm install

# Expone el puerto 3000 si es necesario (agrega esta línea si tu aplicación expone un puerto)
EXPOSE 3000

# Comando para iniciar la aplicación cuando el contenedor se inicie
CMD ["pm2", "start", "/opt/appDir/app.js"]
