//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

print("Bonjour")

var choixUtilisateur:Int
repeat {
    repeat {
        print("1 - Démarrer une partie")
        print("2 - Accéder aux réglages")
        print("3 - Quitter le jeu")
        print("Entrez votre votre choix : ")
        choixUtilisateur = Utilisateur.saisirEntier()
    } while choixUtilisateur < 1 || choixUtilisateur > 3
    
    switch choixUtilisateur {
    case 1:
        print("Début de la partie...")
    case 2:
        print("Voici les préférences")
    case 3:
        print("Bye bye")
    default:
        break
    }
} while choixUtilisateur != 3


