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

func chainageOptionnel() {
    print("Tirage de la loterie")
    var nomGagnant:String? = nil
    if Int.random(in: 1...1000).isMultiple(of: 7) {
        print("Bravo vous avez gagné! Entrez votre nom pour célébrer votre victoire : ")
        nomGagnant = Utilisateur.saisirTexte()
    }
    nomGagnant = nomGagnant?.capitalized
    nomGagnant?.append(" 🎉")
    if let winner = nomGagnant {
        print(winner)
    }
}

func getMaxValueFrom(_ array:[Int]?) -> Int? {
    guard let verifiedArray = array,
          verifiedArray.count > 0
          else { return nil }
    return verifiedArray.max()
}
