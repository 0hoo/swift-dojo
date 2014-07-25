//
//  fizzbuzz.swift
//  CodingDojo
//
//  Created by Young Hoo Kim on 7/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func fizzbuzz() {
    for i in 1...1000 {
        switch (i % 3, i % 5) {
        case (0, 0):
            println("FizzBugzz")
        case (0, _):
            println("Fizz")
        case (_, 0):
            println("Buzz")
        default:
            println(i)
        }
    }
}
