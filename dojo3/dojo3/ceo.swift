//
//  ceo.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func mainCEO() {
    let currentCEO = MicrosoftCEOs()
    println(currentCEO.description())
    
    if let firstCEO = MicrosoftCEOs.fromRaw(1) {
        println(firstCEO.description())
    }
    
    if let secondCEO = MicrosoftCEOs.fromRaw(2) {
        println(secondCEO.description())
    }
}