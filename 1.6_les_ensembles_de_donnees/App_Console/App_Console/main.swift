//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    tableauxNumerotes()
    tableauxClesValeurs()
}
fonctionPrincipale()

func tableauxNumerotes() {
    let ennemisMario:[String] = ["Bowser", "Wario", "Koopa", "Boo"]
    print(ennemisMario[0])
//    ennemisMario[0] = "Browser" -> ceci est interdit car le tableau est constant
//    ennemisMario.append("BoBomb") -> ceci est interdit car le tableau est constant
    
    var amisMario:[String] = ["Luigi"]
    print(amisMario[0])
    amisMario.append("Toad")
    print(amisMario[1])
    amisMario.insert("Yoshi", at: 1)
    print(amisMario[1])
    print(amisMario[2])
    amisMario.remove(at: 0)
    print(amisMario[amisMario.count-1])
    
    print("Listes des ennemis de Mario : ")
    for ennemi in ennemisMario {
        print(" - \(ennemi)")
    }
    
    for (numeroCase, ennemi) in ennemisMario.enumerated() {
        print(" - \(ennemi)")
    }
}

func tableauxClesValeurs() {
    var scoreJoueurs:[String:Int] = ["Mario":10, "Luigi":9]
    print(scoreJoueurs["Mario"])
    scoreJoueurs["Toad"] = 12
    //scoreJoueurs.removeValue(forKey: "Luigi")
    
    print("Scores de tous les joueurs")
    for (nomJoueur, score) in scoreJoueurs {
        print(" - \(nomJoueur) : \(score)")
    }
}



