# Utilizamos una imagen base de Node.js 16
FROM node:16

# Establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instalamos las dependencias del proyecto
RUN npm install

# Copiamos el resto de los archivos al directorio de trabajo
COPY . .

# Exponemos el puerto en el que se ejecutará la aplicación
EXPOSE 80

# Comando para ejecutar la aplicación
CMD ["node", "app.js"]
