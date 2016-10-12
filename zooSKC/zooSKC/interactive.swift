//
//  interactive.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/11/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

class Interactive {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    private var zoo = Zoo()
    
    func go() {
        while !done {
            
            // Ask the user for input right here.
            io.writeMessage("\nWelcome to Zoo Management Mach 5! Type 'Start' to begin! Otherwise, type 'Help' for more information, or 'Quit' to end the program!")
            currentInput = io.getInput()
            let selection = currentInput
            switch selection {
                case "Help":
                print("\nHere is a list of available actions for the management system:\nAdd: You may add an entry for an animal, visitor, or employee.\nView: View info on a specific animal, visitor, or employee.\nQuit: Quit the program.\n")
                case "Quit":
                    print("Thank you for using Zoo Management Mach 5!")
                    done = true
                case "Start":
                    io.writeMessage("\nWould you like to 'Add' an entry or 'View' an existing entry?")
                    currentInput = io.getInput()
                    if currentInput == "Add" {
                        io.writeMessage("\nWould you like to add an 'Animal' or a 'Person'?")
                        currentInput = io.getInput()
                        let addChoice = currentInput
                        switch addChoice {
                            case "Animal":
                            zoo.addAnimal()
                            case "Person":
                            print("Doesn't do anything yet")
                        default:
                            print("Something")
                        }
                        }
                    if currentInput == "View" {
                        io.writeMessage("\nWould you like to view 'Animals' or 'People'?")
                        currentInput = io.getInput()
                        if currentInput == "Animals" {
                            zoo.printAnimal()
                        }
                        
                }
                
                
            default:
                print("\nYou must make a selection!")
            }
            
        }
        print("\nExiting...")
        
        return
    }
    
}
