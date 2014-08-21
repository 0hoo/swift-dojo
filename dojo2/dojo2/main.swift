//
//  main.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/4/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

println("Hello, World!")


func join(s1: String, s2: String, joiner: String) -> String {
    return s1 + joiner + s2
}

println(join("Hello", "World", " "))


func join2(string s1: String, toString s2: String = "W", withJoiner joiner: String = " ") -> String {
    return s1 + joiner + s2
}

println(join2(string: "Hello", toString: "World!", withJoiner: ", "))
println(join2(string: "Hello", withJoiner: "KK"))



func join3(s1: String, s2: String, _ joiner: String = " ") -> String {
    return s1 + joiner + s2
}

println(join3("Hello", "World", ", "))



func containsCharacter(#string: String, #characterToFind: Character) -> Bool {
    for char in string {
        if char == characterToFind {
            return true
        }
    }
    return false
}



func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for n in numbers {
        total += n
    }
    return total / Double(numbers.count)
}

println("\(arithmeticMean(1, 2, 3, 4, 5))")



func arithmeticMean3(_ x:Int = 20, numbers: Double...) -> Double {
    var total: Double = 0
    for n in numbers {
        total += n
    }
    println("count:\(numbers.count)")
    return total / Double(numbers.count)
}

println("\(arithmeticMean3(1, 2, 3, 4, 5))")


let names = ["Chris", "Alex", "Ewa" ,"Barry", "Daniella"]
var reversed = sorted(names, { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
reversed = sorted(names, { s1, s2 in return s1 > s2 }) //Inferring Type
reversed = sorted(names, { s1, s2 in s1 > s2 }) //Single expression closures
reversed = sorted(names, { $0 > $1 }) //Shorthand Argument Names
reversed = sorted(names, >) //Operator Functions
reversed = sorted(names) { $0 > $1 }


println("\(reversed)")
