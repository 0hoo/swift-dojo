//
//  partial.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/6/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func partial<A, B, T>(f: (A, B) -> T, a: A) -> (B) -> T {
    return { f(a, $0) }
}

func bind2nd<A, B, T>(f: (A, B) -> T, b: B) -> (A) -> T {
    return { f($0, b) }
}

func compose<A,B,C>(f: (B) -> C, g: (A) -> B) -> (A) -> C {
    return { f(g($0)) }
}
    