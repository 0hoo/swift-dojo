//
//  main.m
//  dojo4-objc
//
//  Created by Young Hoo Kim on 9/3/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dojo4Objc-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        OrderBase *order = [[OrderBase alloc] initWithDictionary:@{@"order_id":@"1234"}];
        NSLog(@"Order ID:%@", order.orderID);

        ProductOrder *productOrder = [[ProductOrder alloc] initWithDictionary:@{@"order_id":@"1235", @"name": @"Macbook"}];
        NSLog(@"productOrder:%@, name:%@", productOrder.orderID, productOrder.name);

        HotelProductOrder *hotelOrder = [[HotelProductOrder alloc] initWithDictionary:@{@"order_id":@"1236", @"name": @"My Hotel", @"address": @"Seoul"}];
        NSLog(@"hotelOrder ID:%@, name:%@, address:%@", hotelOrder.orderID, hotelOrder.name, hotelOrder.address);
        
        ProductOrder *untitledOrder = [[ProductOrder alloc] init];
        NSLog(@"untitledOrder:%@", untitledOrder);
        
        HotelProductOrder *untitledHoterOrder = [[HotelProductOrder alloc] init];
        NSLog(@"untitledHotelOrder:%@", untitledHoterOrder);
        
        NSLog(@"Hello, World!");
    }
    return 0;
}
