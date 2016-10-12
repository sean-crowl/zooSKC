//
//  Animal.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/12/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class Animal {
    private var currentInput: String = ""
    private var io = Io()
    var animName: String
    var size: String
    var color: String
    var food: String
    
    init(animalName: String, animalSize: String, animalColor: String, animalFood: String) {
        animName = animalName
        size = animalSize
        color = animalColor
        food = animalFood
    }
}
