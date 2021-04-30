# Crée un calque à partir de l'image :
FROM alpine:3.10.3

# Copie fichier actuel dans le container :
COPY piwigo-11.4.0 /piwigo

# Installe les outils requis pour le projet + met à jour dépendances (--no-cache) :
RUN apk --no-cache add curl php7 php7-gd php7-mysqli php7-json php7-session php7-exif

# Ajoute l'utilisateur :
RUN adduser -h /piwigo -DS piwigo 

# -o commande échoue si erreur
RUN install -d -o piwigo /piwigo/piwigo/galleries /piwigo/piwigo/upload

# Change la propriété des fichiers / répertoires. C'est à dire. le propriétaire
# du fichier / répertoire change en celui spécifié, mais il ne modifie pas les permissions. 
RUN chown -R piwigo /piwigo/piwigo/local

# Modifie répertoire courant de travail par Piwigo :
WORKDIR /piwigo

# Si pas de privilèges spéciaux : 
USER piwigo

# Execute php sur le port 8000 sous le nom de piwigo :
CMD ["php","-S","0.0.0.0:8000","-t","piwigo"]
