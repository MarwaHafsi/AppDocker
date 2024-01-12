# Utilisez une image de base avec Java
FROM openjdk:11-jre-slim

# Définissez le répertoire de travail
WORKDIR /app

# Copiez le jar de votre application dans le conteneur
COPY target/spring-boot-thymeleaf-example-0.0.1-SNAPSHOT.jar app.jar
 

# Exposez le port sur lequel votre application fonctionne
EXPOSE 8080

# Commande pour exécuter votre application au démarrage du conteneur
CMD ["java", "-jar", "app.jar"]

