//
//  main.swift
//  Learn Expressible and Associated Type Protocol
//
//  Created by Steven Hertz on 12/13/17.
//  Copyright © 2017 Steven Hertz. All rights reserved.
//

import Foundation


let person1 = Person(stringLiteral: "Sam Ashe")

// because it conforms to ExpressibleByStringLiteral - this works
let person2: Person = "yes sir"


// 
let p3:Person = "pop"

print(p3)

