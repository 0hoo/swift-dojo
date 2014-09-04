//
//  leveltracker-sol.swift
//  dojo4
//
//  Created by Young Hoo Kim on 9/3/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

//
//func tracker() {
//    struct LevelTracker {
//        static var highestUnlockedLevel = 1
//        static func unlockLevel(level: Int) {
//            if level > highestUnlockedLevel {
//                highestUnlockedLevel = level
//            }
//        }
//        static func levelIsUnlocked(level: Int) -> Bool {
//            return level <= highestUnlockedLevel
//        }
//        var currentLevel = 1
//        mutating func advanceToLevel(level: Int) -> Bool {
//            if LevelTracker.levelIsUnlocked(level) {
//                currentLevel = level
//                return true
//            } else {
//                return false
//            }
//        }
//        subscript(index: Int) -> Bool {
//            get {
//                return index <= currentLevel
//            }
//            set (newValue) {
//                if newValue {
//                    LevelTracker.highestUnlockedLevel = index
//                    for i in 0...index {
//                        advanceToLevel(i)
//                    }
//                } else {
//                    LevelTracker.highestUnlockedLevel = index - 1
//                    currentLevel = index - 1
//                }
//            }
//        }
//    }
//    
//    class Player {
//        var tracker = LevelTracker()
//        let playerName: String
//        func completedLevel(level: Int) {
//            LevelTracker.unlockLevel(level + 1)
//            tracker.advanceToLevel(level + 1)
//        }
//        init(name: String) {
//            playerName = name
//        }
//    }
//    
//    var player = Player(name: "0hoo")
//    player.completedLevel(1)
//    println("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
//    println("\(player.tracker[2])")
//    player.tracker[2] = false
//    println("\(player.tracker[2])")
//    player.tracker[5] = true
//    println("\(player.tracker[5])")
//}