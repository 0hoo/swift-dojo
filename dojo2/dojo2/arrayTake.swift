//
//  arrayTake.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/6/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

public extension Array {
    
    subscript (range: Range<Int>) -> Array {
        let start = Swift.max(0, range.startIndex)
        let end = Swift.min(range.endIndex, count)
            
        if start > end {
            return []
        }
            
        return Array(self[Range(start: start, end: end)] as Slice<T>)
    }
    
    subscript (interval: HalfOpenInterval<Int>) -> Array {
        return self[Range(start: interval.start, end: interval.end)]
    }
    
    func take (n: Int) -> Array {
        return self[0..<Swift.max(0, n)]
    }
}

func takeWhile(list:[Int], condition: (Int) -> Bool) -> [Int] {
    
    var lastTrue = -1
    
    for (index, value) in enumerate(list) {
        if condition(value) {
            lastTrue = index
        } else {
            break
        }
    }
    return list.take(lastTrue + 1)
}

