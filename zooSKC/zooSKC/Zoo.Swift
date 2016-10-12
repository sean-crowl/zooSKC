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
    private var peeps = People()
    private var anim = Animal()
    var animName: String = ""
    var size: String = ""
    var color: String = ""
    var legs: String = ""
    var food: String = ""
    
    var animalList = [String]()
    
    
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
        io.writeMessage("\nHow many legs does the animal have?")
        currentInput = io.getInput()
        legs = currentInput
        io.writeMessage("\nWhat kind of food does the animal eat? (Example: Meat, Plants, etc.)")
        currentInput = io.getInput()
        food = currentInput
        printAnimal()
    }
    
    func printAnimal() {
        io.writeMessage("\nWould you like to view or save your entry? Type 'View' to view it, 'Save' to save it, or type 'Restart' to start over.")
        currentInput = io.getInput()
        if currentInput == "View" {
            print("\nYou have added the \(animName). It is of \(size) size and is \(color) in color. It has \(legs) legs and eats \(food)")
            printAnimal()
        } else if currentInput == "Save" {
            animalList.append(animName)
            animalList.append("   -Size: \(size)")
            animalList.append("   -Color: \(color)")
            animalList.append("   -# of Legs: \(legs)")
            animalList.append("   -Food: \(food) \n\n")
        
        } else if currentInput == "Restart" {
            addAnimal()
        } else {
            print("\nYou must make a valid selection!\n")
            printAnimal()
        }
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

}
