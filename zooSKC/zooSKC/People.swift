//
//  People.swift
//  zooSKC
//
//  Created by Sean Crowl on 10/13/16.
//  Copyright © 2016 Interapt. All rights reserved.
//

import Foundation

class People {
    private var currentInput: String = ""
    private var io = Io()
    var persName: String
    var gender: String
    
    init(personName: String, personGender: String) {
        persName = personName
        gender = personGender
    }
}
