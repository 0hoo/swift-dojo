//
//  acc.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/6/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func acc1() {
    func makeAccumulator(i: Double) -> Double -> Double {
        var sum = i
        return {
            sum += $0
            return sum
        }
    }
    
    
    func makeAccumulator2(var sum: Double) -> Double -> Double {
        return {
            sum += $0
            return sum
        }
    }
    
    
    let x = makeAccumulator2(1)
    x(5)
    println(x(2.3))
}