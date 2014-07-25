//
//  collectionView.swift
//  CodingDojo
//
//  Created by Young Hoo Kim on 7/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation
enum UIUserInterfaceIdiom : Int {
    case Unspecified
    case Phone
    case Pad
}

var loadAllItem = false
var items = [1,2,3,4,5,6,7,8,9,10,11,12]
let currentDeviceIdiom:UIUserInterfaceIdiom = .Phone

func collectionView1(section: Int) -> Int {
    if section == 0 {
        if !loadAllItem && items.count >= 3 {
            if currentDeviceIdiom == UIUserInterfaceIdiom.Pad {
                if items.count >= 8 {
                    return 8
                }
            } else {
                return 3
            }
        } else if loadAllItem && items.count >= 12 {
            return 12
        }
    } else if section == 1 {
        if items.count >= 3 {
            return 1
        }
    }
    return 0
}


func collectionView2(section: Int) -> Int {
    switch (section, currentDeviceIdiom, loadAllItem, items.count) {
    case (0, .Phone, false, let count) where count >= 3:
        return 3
    case (0, .Pad, false, let count) where count >= 8:
        return 8
    case (0, _, true, let count) where count >= 12:
        return 12
    case (1, _, _, let count) where count >= 3:
        return 1
    default:
        return 0
    }
}


enum TodayWidgetExpandStatus {
    case Expaneded
    case Unexpnaded
}

var loadAllItemStatus:TodayWidgetExpandStatus = .Expaneded


func collectionView3(section: Int) -> Int {
    switch (section, currentDeviceIdiom, loadAllItemStatus, items.count) {
    case (0, .Phone, .Unexpnaded, let count) where count >= 3:
        return 3
    case (0, .Pad, .Unexpnaded, let count) where count >= 8:
        return 8
    case (0, _, .Expaneded, let count) where count >= 12:
        return 12
    case (1, _, _, let count) where count >= 3:
        return 1
    default:
        return 0
    }
}










