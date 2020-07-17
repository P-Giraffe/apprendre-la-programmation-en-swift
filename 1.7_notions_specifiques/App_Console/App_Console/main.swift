//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    var age:Int?
    repeat {
        print("Veuillez saisir votre âge :")
        let ageTexte:String = Utilisateur.saisirTexte()
        age = Int(ageTexte)
    } while age <= 0
    
}
fonctionPrincipale()





