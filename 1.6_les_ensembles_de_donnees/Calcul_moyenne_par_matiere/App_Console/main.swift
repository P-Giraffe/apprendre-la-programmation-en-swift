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
    var notesList:[String:[Double]] = [:]
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
            notesList = inputNotes(notesList: notesList)
        case 2:
            displaySummary(notesList: notesList)
        default:
            break;
        }
    } while userChoice != 3
    
    print("Bye bye")
}
menu()

func inputNotes(notesList:[String:[Double]]) -> [String:[Double]] {
    var newNotesList = notesList
    
    return newNotesList
}

func displaySummary(notesList:[String:[Double]]) {
    
}



