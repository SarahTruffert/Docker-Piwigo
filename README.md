- Projet utilisé en base : https://github.com/moritzheiber/piwigo-docker.git

    Modifications apportées au docker Dokerfile, il passait initialement via un liens de téléchargement (via un curl), 

    unzip, supression du cache et du fichier zip. Pour répondre à la demande du brief les dockerfiles sont directement liés à Piwigo.

```
$ docker build -t piwigo-docker ./
$ docker-compose up -d
```

Les commandes générales :

    Lancer conteneur : "-d" détacher conteneur + "-p 8080:80" définit port + "nom de l'image"
    DOCKER PS : Docker en cours de fonctionnement (id, status ect..)
    DOCKER SYSTEME PRUNE : Remove dockers pas utiles
    DOCKER PULL (+ nom de l'image) : Récupère img sans la lancer
    Docker IMAGE -a : affiche mes images
    docker-compose up --build : build les images du docker compose
    docker build -t (nom img) -docker-build : -t permet de donner un nom à votre image Docker + . est le répertoire où se trouve le Dockerfile (racine)


- Servi en localhost sur le port 8000 : http://localhost:8000
- Base de donnée : mysql / utilisateur piwigo / mot de passe : piwigo 


- Accorder droits : docker ps / docker exec -it nom du conteneur bash 
- Documentation : https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run

- Les volumes : https://www.youtube.com/watch?v=6rKg9xuWr5Q

= décupler et partager les données entre les containers ET la machine hôte.
