# Utiliser une image de base officielle de Python
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements.txt dans le conteneur
COPY requirements.txt .

# Installer les dépendances listées dans requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste des fichiers de l'application dans le conteneur
COPY . .

# Exposer le port utilisé par l'application Flask
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py", "--host='0.0.0.0'","--port=5000"]
