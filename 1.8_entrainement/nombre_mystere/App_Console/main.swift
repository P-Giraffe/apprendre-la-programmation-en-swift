//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

func fonctionPrincipale() {
    let nombreMystere:Int = Math.nombreAleatoire(comprisEntre: 1, et: 100)
    print(nombreMystere)
    var nombreDeTentatives = 0
    var tentative:Int
    
    repeat {
        print("Quel est le nombre mystère ?")
        tentative = Utilisateur.saisirEntier()
        nombreDeTentatives = nombreDeTentatives + 1
        if tentative < nombreMystere {
            print("C'est plus")
        } else if tentative > nombreMystere {
            print("C'est moins")
        }
    } while tentative != nombreMystere
    
    print("Bravo vous avez trouvé le nombre mystère (\(nombreMystere)) en \(nombreDeTentatives) tentative(s) !")
}
fonctionPrincipale()






