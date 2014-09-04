//
//  main.swift
//  dojo4
//
//  Created by Young Hoo Kim on 9/2/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

class Checkerboard {
    let boardColors: [Bool] = {
        var temporaryBoard = [Bool]()
        var isBlack = false
        for i in 1...10 {
            for j in 1...10 {
                temporaryBoard.append(isBlack)
                isBlack = !isBlack
            }
            isBlack = !isBlack
        }
        NSLog("set boardColors")
        return temporaryBoard
    }()
    
    init() {
        NSLog("1")
    }
    
    func squareIsBlackAtRow(row: Int, column: Int) -> Bool {
        return boardColors[(row * 10) + column]
    }
}

let a = Checkerboard()
let b = Checkerboard()

tracker()
romanMain()