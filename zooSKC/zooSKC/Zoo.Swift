//
//  Zoo.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Zoo {
    var done: Bool = false
    var currentInput: String = ""
    var io = Io()
    var animName: String = ""
    var size: String = ""
    var color: String = ""
    var food: String = ""
    var legs: String = ""
    var fly: String = ""
    var water: String = ""
    var persName: String = ""
    var gender: String = ""
    var age: String = ""
    var job: String = ""
    var attraction: String = ""
    
    var landAnimalList = [Land]()
    var avianAnimalList = [Avian]()
    var aquaticAnimalList = [Aquatic]()
    var employeeList = [Employee]()
    var visitorList = [Visitor]()
    
    enum HabitatType {
        case Pit
        case Aviary
        case Aquarium
    }
    
    
    func addLandAnimal() {
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
        io.writeMessage("\nHow many legs does it have?")
        currentInput = io.getInput()
        legs = currentInput
        
        print("\nThank you! Your animal has been added!\n")
        let newLand = Land(animName: animName, size: size, color: color, food: food, numberOfLegs: legs)
        landAnimalList.append(newLand)
        
    }
    
    func addAvianAnimal() {
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
        io.writeMessage("\nDoes it fly?")
        currentInput = io.getInput()
        fly = currentInput
        
        print("\nThank you! Your animal has been added!\n")
        let newAvian = Avian(animName: animName, size: size, color: color, food: food, doesItFly: fly)
        avianAnimalList.append(newAvian)
        
    }
    
    func addAquaticAnimal() {
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
        io.writeMessage("\nDoes it live in fresh water or salt water?")
        currentInput = io.getInput()
        legs = currentInput
        
        print("\nThank you! Your animal has been added!\n")
        let newAquatic = Aquatic(animName: animName, size: size, color: color, food: food, typeOfWater: water)
        aquaticAnimalList.append(newAquatic)
        
    }
    
    func addEmployee() {
        io.writeMessage("\nWhat is the employee's name?")
        currentInput = io.getInput()
        persName = currentInput
        io.writeMessage("\nWhat is the employee's gender?")
        currentInput = io.getInput()
        gender = currentInput
        io.writeMessage("\nWhat is the employee's age?")
        currentInput = io.getInput()
        age = currentInput
        io.writeMessage("\nWhat job does the employee perform?")
        currentInput = io.getInput()
        job = currentInput
        
        print("\nThank you! Your animal has been added!\n")
        let newEmployee = Employee(persName: persName, gender: gender, age: age, jobTitle: job)
        employeeList.append(newEmployee)
    }
    
    func addVisitor() {
        io.writeMessage("\nWhat is the visitor's name?")
        currentInput = io.getInput()
        persName = currentInput
        io.writeMessage("\nWhat is the visitor's gender?")
        currentInput = io.getInput()
        gender = currentInput
        io.writeMessage("\nWhat is the visitor's age?")
        currentInput = io.getInput()
        age = currentInput
        io.writeMessage("\nWhat is the visitor's favorite attraction?")
        currentInput = io.getInput()
        attraction = currentInput
        
        print("\nThank you! Your animal has been added!\n")
        let newVisitor = Visitor(persName: persName, gender: gender, age: age, favoriteAttraction: attraction)
        visitorList.append(newVisitor)
    }
    
    

    func printLandAnimals() {
        for i in landAnimalList {
                print(i.animName)
            }
    }
    
    func printAvianAnimals() {
        for i in avianAnimalList {
            print(i.animName)
        }
    }
    
    func printAquaticAnimals() {
        for i in aquaticAnimalList {
            print(i.animName)
        }
    }

    func printEmployees() {
        for i in employeeList {
            print(i.persName)
        }
    }
    
    func printVisitors() {
        for i in visitorList {
            print(i.persName)
        }
    }
    
    
}

