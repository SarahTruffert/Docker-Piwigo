- Projet utilisé en base : https://github.com/moritzheiber/piwigo-docker.git

Modifications apportées au docker Dokerfile, passait initialement via un liens de téléchargement (via un curl), 
unzip, supression du cache et du fichier zip. Pour répondre à la demande du brief les dockerfiles sont directement liés à Piwigo.
Run

```
$ docker build -t piwigo-docker ./
$ docker-compose up -d
```

Ou trouver Piwigo : http://localhost:8000

- Base de donnée : mysql
- L'utilisateur piwigo 
- Le mot de passe : piwigo 


- Accorder droits :

docker ps 

docker exec -it nom du conteneur bash 
