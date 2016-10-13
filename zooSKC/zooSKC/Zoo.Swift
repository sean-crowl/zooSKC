//
//  Zoo.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Zoo {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    var animName: String = ""
    var size: String = ""
    var color: String = ""
    var food: String = ""
    
    var animalList = [Animal(animalName: "Shark", animalSize: "Large", animalColor: "Blue", animalFood: "Fish")]
    
    
    func addAnimal() {
        io.writeMessage("\nWhat is the animal you would like to add?")
        currentInput = io.getInput()
        animName = currentInput
        io.writeMessage("\nWhat is the size of the animal? (Example: Small, Large, etc.)")
        currentInput = io.getInput()
        size = currentInput
        io.writeMessage("\nWhat is the color of the animal?")
        currentInput = io.getInput()
        color = currentInput
        io.writeMessage("\nWhat kind of food does the animal eat? (Example: Meat, Plants, etc.)")
        currentInput = io.getInput()
        food = currentInput
        
        print("Thank you! Your animal has been added!")
        var newAnimal = Animal(animalName: animName, animalSize: size, animalColor: color, animalFood: food)
        animalList.append(newAnimal)
        
    }
    
    
    func addMoreAnim() {
        io.writeMessage("\nWould you like to add another animal? Type 'Yes' or type 'Return' to return to the menu!")
        currentInput = io.getInput()
        if currentInput == "Yes" {
            addAnimal()
        } else if currentInput == "Return" {
            print("\nReturning to main menu!\n")
        } else {
            print("\nYou must make a valid selection!\n")
            addMoreAnim()
        }
    }

    func printAnimals() {
        for i in animalList {
            print(i.animName)
        }
    }
}
