# Usar una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo
WORKDIR /app

# Descargar el servidor de Minecraft
RUN wget -O minecraft_server.jar https://piston-data.mojang.com/v1/objects/450698d1863ab5180c25d7c804ef0fe6369dd1ba/server.jar

# Aceptar el EULA
RUN echo "eula=true" > eula.txt

# Exponer el puerto 25565
EXPOSE 25565

# Ejecutar el servidor de Minecraft
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar", "nogui"]

