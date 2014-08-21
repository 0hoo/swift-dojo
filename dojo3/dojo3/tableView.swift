//
//  tableView.swift
//  dojo3
//
//  Created by Young Hoo Kim on 8/19/14.
//  Copyright (c) 2014 Young Hoo Kim. All rights reserved.
//

import Foundation

class UILabel {
    var text:String = ""
}

class UITableViewCell {
    var textLabel:UILabel = UILabel()
    var detailTextLabel:UILabel = UILabel()
}


class MyViewController {

    enum CellViewModel: Int {
        case NADELLA, GATES, BALLMER
        static let names   = [NADELLA: "NADELLA", GATES: "GATES", BALLMER: "BALLMER"]
        static let details = [NADELLA: "Current CEO", GATES: "First CEO", BALLMER: "Losers"]
        
        func configure(cell:UITableViewCell) {
            if let name = CellViewModel.names[self] {
                cell.textLabel.text = name
            }
            if let detail = CellViewModel.details[self] {
                cell.detailTextLabel.text = detail
            }
        }
    }
    
    func tableView(index:Int) -> UITableViewCell! {
        var cell = UITableViewCell() //dequeueReusableCellWithIdentifier
        
        if let cellViewModel = CellViewModel.fromRaw(index) {
            cellViewModel.configure(cell)
        }
        
        return cell
    }
}




