//
//  ifilter.swift
//  dojo2
//
//  Created by Young Hoo Kim on 8/6/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation


func ifilter(list:[Int], condition: (Int) -> Bool) -> [Int] {
    return list.filter(condition)
}

func imap(list:[Int], manipulator: (Int) -> Int) -> [Int] {
    return list.map(manipulator)
}
