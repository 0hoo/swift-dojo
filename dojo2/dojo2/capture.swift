//
//  capture.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/5/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func capture() {
    var funcs: [() -> Int] = []
    for var i = 0; i < 10; i++ {
        funcs.append({ i * i })
    }
    println(funcs[3]()) // prints 100
}

























func capture2() {
    var funcs: [() -> Int] = []
    for var i = 0; i < 10; i++ {
        let j = i
        funcs.append({ j * j })
    }
    println(funcs[3]()) //prints 9
    
    
    
    
    
    
    
    
    
    
    funcs = []
    for i in 0..<10 {
        funcs.append({ i * i })
    }
    println(funcs[3]()) // prints 9
    
    
    
    
    
    
    
    
    
    let funcs2 = map(0..<10) {i in { i * i }}
    println(funcs2[3]()) // prints 9
}





//@autoclosure











func jensen() {
    var i = 0
    
    func sum(inout i: Int, lo: Int, hi: Int, term: @autoclosure () -> Double) -> Double {
        var result = 0.0
        for i = lo; i <= hi; i++ {
            result += term()
        }
        return result
    }
    
    println(sum(&i, 1, 100, 1 / Double(i)))
}






















func acc() {
    func makeAccumulator(var sum: Double) -> Double -> Double {
        return {
            sum += $0
            return sum
        }
    }
    
    let x = makeAccumulator(1)
    x(5)
    println(x(2.3))
}






func useReduce() {
    let a = [1, 2, 3, 4, 5]
    println(a.reduce(0, +) + a.reduce(1, *)) // prints 15
}














