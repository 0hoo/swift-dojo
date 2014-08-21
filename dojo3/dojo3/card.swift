//
//  card.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func mainCard() {
    var marks = [Mark.Heart, .Diamond, .Spade, .Club]
    
    var deckOfCards:[PlayingCard] = []
    for mark in marks {
        deckOfCards.append(PlayingCard.Ace(mark))
        deckOfCards.append(.King(mark))
        deckOfCards.append(.Queen(mark))
        deckOfCards.append(.Jack(mark))
        for i in 2...10 {
            deckOfCards.append(.ValueCard(i, mark))
        }
    }
    
    //sum
    var sum = 0
    deckOfCards.map({ sum += $0.value()})
    println("sum = \(sum)")
}