# Utilisez une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Créez le volume pour /data
VOLUME /data

# Copier le dépôt GitHub cloné dans le répertoire de travail du conteneur
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Expose le port pour l'API
EXPOSE 8000

# Commande pour démarrer l'application
CMD ["python", "app.py", "--host='0.0.0.0'","--port=8000"]
