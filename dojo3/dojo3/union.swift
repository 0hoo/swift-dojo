//
//  union.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func mainUnion() {
    let s1 = Shape.Rectangle(10, 20)
    println(s1.area()) //Output: 200.0
    
    let s2 = Shape.Circle(10)
    println(s2.area()) //314.159...
    
    let s3 = Shape.Square(10)
    println(s3.area()) //100.0
}






















//enum Tree {
//    case Tip
//    case Node(Int, Tree, Tree)
//    
//    var sumTree: Int {
//        switch (self) {
//        case .Tip:
//            return 0
//        case let .Node(value, left, right):
//            return value + left.sumTree + right.sumTree
//        }
//    }
//}


