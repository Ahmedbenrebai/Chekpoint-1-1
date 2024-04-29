#!/bin/bash

# Vérification arguments 


if [ "$#" -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 
fi


    # vérification si l'utilisateur existe déjà
    if id "<nom_utilisateur>" &>/dev/null; then
        echo "Attention : L'utilisateur <nom_utilisateur> existe déjà."
    else
        # création de utilisateur
        sudo useradd  "<nom_utilisateur>" 
        # Vérifie si la création de l'utilisateur s'est bien passée
        if [ $? -eq 0 ]; then
            echo "Succès : L'utilisateur <nom_utilisateur> a été créé."
        else
            echo "Erreur : Impossible de créer l'utilisateur <nom_utilisateur>."
        fi
    fin
