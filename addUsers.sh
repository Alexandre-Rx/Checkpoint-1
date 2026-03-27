#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Vous dezvez rentrer au moins un utilisateur"
	exit 1
fi
#boucle recupéreant les arguments du scripts en tant que $nom_user
for nom_user in "$@"
do
# verif de la présence de l'utilisateur a créer
	if grep -q "^$nom_user:" < /etc/passwd
	then
		echo "L'utilisateur $nom_user existe déjà"
	else
# creation de l'utilisateur
		useradd "$nom_user"
# vérification que l'utilisateur a bien été créé
		if [ $? -eq 0 ]
		then
		echo "l'utilisateur $nom_user a bien été créé"
		else
		echo "Un problème est survenue"
		fi
	fi
done