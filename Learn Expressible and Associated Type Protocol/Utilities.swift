//
//  Utilities.swift
//  Learn Operators Methods
//
//  Created by Steven Hertz on 11/24/17.
//  Copyright © 2017 Steven Hertz. All rights reserved.
//

import Foundation


struct Person {
   
    var firstName: String
    var lastName: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
}


/*
 The main thing is that this is demonstrating conforming to a protocol that has associated type and
 then what the protocol gives you
 
 - ExpressibleByStringLiteral has an associatedType "StringLiteralType" which I am defining explicitely using
   typeAlias
 
 - Associatedtype is a place holder for the conforming object to supply a type for
 
 - I gave it a custom initializer to support the initialization of the objet by a String
 */

extension Person: ExpressibleByStringLiteral {
    typealias StringLiteralType = String

    // need this to conform to Express... protocol, the associatedType "StringLiteralType" is used
    init(stringLiteral value: StringLiteralType) {
        var nameComponents = value.components(separatedBy: " ")
        if nameComponents.count < 2 {
            // nameComponents.append("xxxx")
            nameComponents += ["yyy"]
        }
        self.init(firstName: nameComponents[0], lastName: nameComponents[1])
    }
}

