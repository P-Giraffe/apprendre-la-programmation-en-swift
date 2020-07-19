//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    optionnelsValeurParDefaut()
    
}
fonctionPrincipale()


func optionnelsIfLet() {
    var age:Int
    print("Veuillez saisir votre âge :")
    let ageTexte:String = Utilisateur.saisirTexte()
    if let ageSaisi:Int = Int(ageTexte) {
        age = ageSaisi
    } else {
        print("Veuillez saisir un entier valide")
    }
}

func optionnelsValeurParDefaut() {
    var age:Int
    print("Veuillez saisir votre âge :")
    let ageTexte:String = Utilisateur.saisirTexte()
    age = Int(ageTexte) ?? 0
}

func optionnelsEnModeKamikase() {
    var age:Int
    print("Veuillez saisir votre âge :")
    let ageTexte:String = Utilisateur.saisirTexte()
    age = Int(ageTexte)!
}

func getMaxValueFrom(_ array:[Int]?) -> Int? {
    guard let verifiedArray = array,
          verifiedArray.count > 0
          else { return nil }
    return verifiedArray.max()
}


