# Utiliza la imagen base oficial de Nginx
FROM nginx:alpine

# Copia los archivos estáticos al directorio de Nginx para servir archivos
COPY . /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# El comando por defecto ejecuta Nginx y este sirve tu contenido estático
CMD ["nginx", "-g", "daemon off;"]
