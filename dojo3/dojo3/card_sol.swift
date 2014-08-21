//
//  card_sol.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/20/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation


enum Mark {
    case Heart, Diamond, Spade, Club
}

enum PlayingCard {
    case Ace(Mark)
    case King(Mark)
    case Queen(Mark)
    case Jack(Mark)
    case ValueCard(Int, Mark)
    
    func value() -> Int {
        switch self {
        case .Ace:
            return 1
        case .King, .Queen, .Jack:
            return 11
        case .ValueCard(let x, _):
            return x
        }
    }
}





//var sum = 0
//deckOfCards.map({ sum += $0.value()})
//println("sum = \(sum)")