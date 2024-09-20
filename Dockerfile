# Usamos la imagen base de Alpine Linux
FROM node:18-alpine

# Establecemos el directorio de trabajo
WORKDIR /app

# Copiamos los archivos del proyecto al contenedor
COPY . .

# Actualizamos los paquetes e instalamos Node.js y Yarn directamente desde los repositorios oficiales
RUN npm install --only=production

# Exponemos el puerto de la aplicación (ejemplo: 3000)
EXPOSE 80

# Comando por defecto para ejecutar la aplicación
CMD ["node", "src/index.js"]
