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
            io.writeMessage("\nWelcome to Zoo Management Mach 5! What would you like to do today? Type 'Help' for a list of options!")
            currentInput = io.getInput()
            let selection = currentInput
            switch selection {
                case "Help":
                print("\nHere is a list of available actions for the management system:\nAdd: You may add an entry for an animal, visitor, or employee.\nView: View the current available animals, employees, or visitors.\nQuit: Quit the program.\n")
                case "Quit":
                    print("\nThank you for using Zoo Management Mach 5!")
                    done = true
                case "Add":
                    io.writeMessage("\nWould you like to add an 'Animal' or a 'Person'?")
                    currentInput = io.getInput()
                    let addChoice = currentInput
                        switch addChoice {
                            case "Animal":
                            zoo.addAnimal()
                            case "Person":
                            print("Doesn't do anything yet")
                        default:
                            print("\nNot a valid selection!")
                        }
                default:
                print("\nNot a valid selection!")
                        }
                        
                }
        
        print("\nExiting...")
        
        return
    }
}
