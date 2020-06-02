//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func demanderNomUtilisateur() -> String {
    var nomUtilisateur:String
    repeat {
        print("Entrez votre nom : ")
        nomUtilisateur = Utilisateur.saisirTexte()
        if nomUtilisateur.count < 3 || nomUtilisateur.count > 20 {
            print("Le nom d'utilisateur doit être compris entre 3 et 20 caractères, vous en avez saisi \(nomUtilisateur.count)")
        }
    } while nomUtilisateur.count < 3 || nomUtilisateur.count > 20
    return nomUtilisateur
}

func menu() {
    let nomUtilisateur = demanderNomUtilisateur()
    print("Bonjour \(nomUtilisateur)")

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
            demarrerPartie(nomJoueur: nomUtilisateur)
        case 2:
            afficherReglages(nom: nomUtilisateur)
        case 3:
            afficherMessageFin(utilisateur: nomUtilisateur)
        default:
            break
        }
    } while choixUtilisateur != 3
}

func demarrerPartie(nomJoueur:String) {
    print("Début de la partie pour \(nomJoueur)...")
}

func afficherReglages(nom:String) {
    print("\(nom) : voici les préférences")
}

func afficherMessageFin(utilisateur:String) {
    print("Bye bye " + utilisateur)
}
menu()

