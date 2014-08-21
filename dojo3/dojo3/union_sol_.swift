//
//  union_sol_.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/20/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

enum Shape {
    case Rectangle(Double, Double)
    case Circle(Double)
    case Square(Double)
    
    func area() -> Double {
        switch (self) {
            case .Rectangle(let w, let h): return w * h
            case .Circle(let r):  return M_PI * r * r
            case .Square(let x):  return x * x
        }
    }
    
    //var area : Double {
}




















