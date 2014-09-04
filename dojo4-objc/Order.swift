//
//  Order.swift
//  dojo4-objc
//
//  Created by Young Hoo Kim on 9/3/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

class OrderBase: NSObject {
    var orderID: String?
    
    override convenience init() {
        self.init(dictionary:[:])
    }
    
    init(dictionary: NSDictionary) {
        if let value = dictionary["order_id"] as? String {
            orderID = value
        }
    }
}

class ProductOrder: OrderBase {
    var name: String?
    
    override init(dictionary: NSDictionary) {
        if let value = dictionary["name"] as? String {
            name = value
        }
        super.init(dictionary: dictionary)
    }
}

class HotelProductOrder: ProductOrder {
    var address: String?
    
    override init(dictionary: NSDictionary) {
        if let value = dictionary["address"] as? String {
            address = value
        }
        super.init(dictionary: dictionary)
    }
}