**DÉBUT DU SCRIPT**

**SI** aucun nom d'utilisateur n'est fourni au lancement 
**ALORS**
    Afficher le message d'erreur : "Vous devez écrire au moins un utilisateur"
    Arrêter le script avec le code d'erreur 1
**FIN SI**

**POUR CHAQUE** nom d'utilisateur passé en argument 
**FAIRE**

  **SI** le nom d'utilisateur est trouvé dans le fichier système des utilisateurs (/etc/passwd) **ALORS**
        Afficher le message : "L'utilisateur ... existe déjà"

  **SINON**
        Lancer la création du nouvel utilisateur
        
  **SI** la commande de création a réussi **ALORS**
            Afficher le message : "L'utilisateur ... a bien été créé"
        **SINON**
            Afficher le message d'erreur : "Un problème est survenu"
        **FIN SI**
    **fin SI**

**FIN POUR chAQUE**

**FIN DU SCRIPT**
