//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//
import Foundation

func fonctionPrincipale() {
    closures_tableaux()
}
fonctionPrincipale()

func closures_timer() {
    print("Bonjour, je vais lancer un timer")
    Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { (_:Timer) in
        print("Le timer est terminé")
    }
    print("Je viens de lancer un timer")
}


func closures_tableaux() {
    let notes = [4.6, 7.8, 10.2, 12.4, 17.0, 20.0]
    let notesEnLettres:[String] = notes.map { (note) -> String in
        if note < 5 {
            return "D"
        } else if note < 10 {
            return "C"
        } else if note < 15 {
            return "B"
        } else {
            return "A"
        }
    }
    notesEnLettres.forEach { print($0) }
    
    var somme:Double = 0
    for note in notes {
        somme = somme + note
    }
    
    somme = notes.reduce(0.0, { (resultatPrecedent:Double, noteSuivante:Double) -> Double in
        return resultatPrecedent + noteSuivante
    })
    
    somme = notes.reduce(0.0) {$0 + $1}

    let moyenne = somme / Double(notes.count)
    var auDessusDeLaMoyenne = notes.filter { (noteATester) -> Bool in
        if noteATester > moyenne {
            return true
        } else {
            return false
        }
    }
    
    auDessusDeLaMoyenne = notes.filter { (noteATester) -> Bool in
        noteATester > moyenne
    }
    
    auDessusDeLaMoyenne = notes.filter { $0 > moyenne }
    for note in auDessusDeLaMoyenne {
        print("Note : \(note)")
    }
}





















func typesDeVariables() {
    let note2:Int
    let note1:Int = 20
    note2 = Int(19.5)
    let note3:Double = Double(note1)
}

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
