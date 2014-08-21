//
//  optional.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

var myOptionalString = MyOptional("A String")
var myNilString = MyOptional()
var a = myNilString.unwrap()


//postfix operator >! {}
//postfix func >! <T>(value: MyOptional<T> ) -> Any {
//    return value.unwrap()
//}
//
//var b = myOptionalString>!

//enum MyOptional<String> {
// 
//  init(_ value: String) {
//  ...
//}
























