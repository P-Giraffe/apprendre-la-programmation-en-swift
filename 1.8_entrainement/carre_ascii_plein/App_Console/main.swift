//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func fonctionPrincipale() {
    print("La taille du carré à dessiner : ")
    let tailleCarre:Int
    tailleCarre = Utilisateur.saisirEntier()
    dessinerCarreASCII(taille: tailleCarre)
}
fonctionPrincipale()


func dessinerCarreASCII(taille:Int) {
    for numeroDeLigne in 1...taille {
        for numeroDeColonne in 1...taille {
            print("* ", terminator:"")
        }
        print()
    }
}



