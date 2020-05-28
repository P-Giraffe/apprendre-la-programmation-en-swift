//
//  main.swift
//  AppConsole
//
//  Created by Maxime Britto on 02/05/2017.
//  Copyright © 2017 mbritto. All rights reserved.
//

import Foundation

print("Entrez votre age : ")
let age:Int
age = Utilisateur.saisirEntier()
print("Age : \(age)")

if age > 0 && age < 12 {
    print("Vous êtes un enfant")
} else if age < 18 {
    print("Vous êtes un adolescent")
} else if age <= 0 || age > 120 {
    print("Âge incorrect")
} else {
    print("Vous êtes un adulte")
}

switch age {
case 1...12:
    print("Vous êtes un enfant")
//    fallthrough
case 13..<18:
    print("Vous êtes un adolescent")
case 18:
    print("Bravo pour votre majorité")
default:
    print("Vous êtes un adulte")
}

