# Usar una imagen base de OpenJDK
FROM openjdk:11

# Establecer el directorio de trabajo
WORKDIR /app

# Descargar el servidor de Minecraft
RUN wget -O minecraft_server.jar https://launcher.mojang.com/v1/objects/653da63dfc1b98ae7bc5e0ac6f2a8402e8a9b5c5/server.jar

# Aceptar el EULA
RUN echo "eula=true" > eula.txt

# Exponer el puerto 25565
EXPOSE 25565

# Ejecutar el servidor de Minecraft
CMD ["java", "-Xmx1024M", "-Xms1024M", "-jar", "minecraft_server.jar", "nogui"]
