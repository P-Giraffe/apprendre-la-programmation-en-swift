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
repeat {
    print("Combien de notes à saisir : ")
    nombreDeNotes = Utilisateur.saisirEntier()
} while nombreDeNotes < 0

if nombreDeNotes > 0 {
    for numeroNote in 1...nombreDeNotes {
        var note:Double
        repeat {
            print("Entrez la note \(numeroNote)/\(nombreDeNotes): ")
            note = Utilisateur.saisirReel()
        } while note < 0 || note > 20
        somme = somme + note
    }

    let moyenne = somme / Double(nombreDeNotes)
    print("Moyenne : \(moyenne)")
}


