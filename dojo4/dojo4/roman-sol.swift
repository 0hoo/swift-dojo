//
//  roman-sol.swift
//  dojo4
//
//  Created by Young Hoo Kim on 9/3/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

func arabicToRoman(n: Int) -> String {
    var x = n
    var str = ""
    for (value, letter) in [
        (1000, "M"),
        ( 900, "CM"),
        ( 500, "D"),
        ( 100, "C"),
        (  90, "XC"),
        (  50, "L"),
        (  10, "X"),
        (   9, "IX"),
        (   5, "V"),
        (   1, "I")] {
            while x >= value {
                str += letter
                x -= value
            }
    }
    return str
}

func romanToArabic(input: String) -> Int {
    var str = input
    var x = 0
    for (value, letter) in [
        (1000,  "M"),
        ( 900, "CM"),
        ( 500,  "D"),
        ( 100,  "C"),
        (  90, "XC"),
        (  50,  "L"),
        (  10,  "X"),
        (   9, "IX"),
        (   5,  "V"),
        (   1,  "I")] {
            while str.hasPrefix(letter) {
                x += value
                str = str.substringFromIndex(advance(str.startIndex, countElements(letter)))
            }
    }
    return x
}