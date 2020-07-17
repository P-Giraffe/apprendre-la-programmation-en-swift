//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

var nombreDeNotes = 0
var somme:Double = 0.0
    
var note:Double
repeat {
    print("Entrez une note (ou -1 pour afficher la moyenne des notes précédentes): ")
    repeat {
        note = Utilisateur.saisirReel()
        if note > 20 {
            print("Ce programme n'accepte que les notes comprises entre 0 et 20")
        }
    } while note > 20
    if note >= 0 {
        nombreDeNotes = nombreDeNotes + 1
        somme = somme + note
    }
} while note >= 0


if nombreDeNotes > 0 {
    let moyenne = somme / Double(nombreDeNotes)
    print("Moyenne : \(moyenne)")
}


