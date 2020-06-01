//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

//Exemple de génération de nombre aléatoire
let nombreAleatoire = Math.nombreAleatoire(comprisEntre: 1, et: 100)
print(nombreAleatoire)

func demanderPrenom() {
    //Exemples de saisies utilisateur
    print("Entrez votre prénom : ")
    let texte:String
    texte = Utilisateur.saisirTexte()
    print("Bonjour \(texte)")
}

demanderPrenom()
demanderPrenom()

