//
//  food.swift
//  dojo4
//
//  Created by Young Hoo Kim on 9/2/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

class Food {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    convenience init() {
        assert(false, "Error")
        self.init(name: "[Unnamed]")
    }
}

class RecipeIngredient: Food {
    var quantity: Int
    
    init(name: String, quantity: Int) {
        self.quantity = quantity
        super.init(name: name)
    }
    
    init(receipName: String) {
        self.init(name: receipName, quantity:1)
    }    
}

var f = Food()
var r1 = RecipeIngredient(name: "Egg")
var r2 = RecipeIngredient()

