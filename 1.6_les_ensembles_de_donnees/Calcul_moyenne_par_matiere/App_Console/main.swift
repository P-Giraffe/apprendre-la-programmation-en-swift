//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

///# Calcul de moyenne par matière
func menu() {
    print("Bonjour et bienvenue dans votre carnet de notes")
    var userChoice : Int
    repeat {
        repeat {
            print("1 - Saisie des notes")
            print("2 - Affichage des moyennes")
            print("3 - Quitter")
            userChoice = Utilisateur.saisirEntier()
        } while userChoice < 1 || userChoice > 3
        
        switch userChoice {
        case 1:
            inputNotes()
        case 2:
            displaySummary()
        default:
            break;
        }
    } while userChoice != 3
    
    print("Bye bye")
}
menu()

func inputNotes() {
    
}

func displaySummary() {
    
}



