//
//  optional_sol.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/20/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

enum MyOptional<T> {
    case None
    case Some(T)
    
    init (_ value: T) {
        self = .Some(value)
    }
    
    init() {
        self = .None
    }
    
    func unwrap() -> Any {
        switch self {
        case .Some(let x):
            return x
        default:
            assert(true, "Unexpectedly found nil while unwrapping an MyOptional value")
            return MyOptional.None
        }
    }
}