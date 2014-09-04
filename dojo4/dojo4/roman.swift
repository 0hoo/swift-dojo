//
//  roman.swift
//  dojo4
//
//  Created by Young Hoo Kim on 9/2/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

// 1000 = "M"
//  900 = "CM"
//  500 = "D"
//  100 = "C"
//   90 = "XC"
//   50 = "L"
//   10 = "X"
//    9 = "IX"
//    5 = "V"
//    1 = "I"

func romanMain() {
    var roman = arabicToRoman(2553)
    println("\(roman)")
    println("\(romanToArabic(roman))")
}