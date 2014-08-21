//
//  ceo_sol.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

enum MicrosoftCEOs: Int {
    case BillGates = 1
    case SteveBallmer
    case SatyaNadella
    
    init() {
        self = .SatyaNadella
    }
    
    func description() -> String {
        switch (self) {
        case .BillGates:
            return "Bill Gates"
        case .SteveBallmer:
            return "Steve Ballmer"
        case .SatyaNadella:
            return "Satya Nadella"
        }
    }
}