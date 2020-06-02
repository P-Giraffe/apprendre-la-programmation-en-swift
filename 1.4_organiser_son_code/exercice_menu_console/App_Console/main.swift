//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func menu() {
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
            demarrerPartie()
        case 2:
            afficherReglages()
        case 3:
            afficherMessageFin()
        default:
            break
        }
    } while choixUtilisateur != 3
}

func demarrerPartie() {
    print("Début de la partie...")
}

func afficherReglages() {
    print("Voici les préférences")
}

func afficherMessageFin() {
    print("Bye bye")
}
menu()

