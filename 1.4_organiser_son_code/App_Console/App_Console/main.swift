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
    
    let nom = demanderPrenom()
    print(nom)
}
fonctionPrincipale()


func demanderPrenom() -> String {
    //Exemples de saisies utilisateur
    print("Entrez votre prénom : ")
    let texte:String
    texte = Utilisateur.saisirTexte()
    direBonjour(prenom: texte, age: 30)
    return texte
}

@discardableResult
func direBonjour(prenom:String, age:Int) -> Int {
    print("Bonjour \(prenom), \(age) ans")
    return age
}



