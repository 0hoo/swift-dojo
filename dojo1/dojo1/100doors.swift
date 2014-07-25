//
//  100doors.swift
//  CodingDojo
//
//  Created by Young Hoo Kim on 7/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//
import Foundation

enum Door : String {
    case Opened = "Open"
    case Closed = "Closed"
}

func door() {
    var doorsStateList = [Door](count: 100, repeatedValue: Door.Closed)
    
    for i in 1...100 {
        for (index, item) in enumerate(doorsStateList) {
            if ((index + 1) % i) == 0 {
                if item == Door.Opened {
                    doorsStateList[index] = Door.Closed
                } else {
                    doorsStateList[index] = Door.Opened
                }
            }
        }
    }
    
    for (index, item) in enumerate(doorsStateList) {
        println("Door \(index+1) is \(item.toRaw())")
    }
}


func door2() {
    var doorsStateList = [Door](count: 100, repeatedValue: Door.Closed)
    
    var i = 1
    do {
        doorsStateList[(i*i)-1] = Door.Opened
        ++i
    } while (i*i) <= doorsStateList.count
    
    for (index, item) in enumerate(doorsStateList) {
        println("Door \(index+1) is \(item.toRaw())")
    }
}

