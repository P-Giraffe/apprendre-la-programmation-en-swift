//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    //Exemple de génération de nombre aléatoire
    let nombreAleatoire = Math.nombreAleatoire(comprisEntre: 1, et: 100)
    print(nombreAleatoire)
    
    let prenom = demanderPrenom()
    print(prenom)
}
fonctionPrincipale()


func demanderPrenom() -> String {
    //Exemples de saisies utilisateur
    print("Entrez votre prénom : ")
    let prenom:String
    prenom = Utilisateur.saisirTexte()
    direBonjourALaPersonneAppelée(prenom, dontLAgeEst: 30)
    direBonjourALaPersonneAppelée("Sheldon", dontLAgeEst: 35)
    return prenom
}

@discardableResult
func direBonjourALaPersonneAppelée(_ prenom:String,dontLAgeEst age:Int) -> Int {
    print("Bonjour \(prenom), \(age) ans")
    return age
}



