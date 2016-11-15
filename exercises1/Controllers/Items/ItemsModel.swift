//
//  ItemsModel.swift
//  exercises1
//
//  Created by shay markovich on 15/11/2016.
//  Copyright © 2016 shay markovich. All rights reserved.
//

import UIKit

class ItemsModel: NSObject {
    
    static let items: [Item] = {
        return [Item("1", "one"), Item("2", "two"), Item("3", "one"), Item("4", "two"), Item("5", "one"), Item("6", "one"), Item("7", "one"), Item("8", "one"), Item("9", "one"), Item("10", "one"), Item("11", "one"), Item("12", "one"), Item("13", "two"), Item("14", "two"), Item("15", "two")]
        }()
}

struct Item{
    
    let name: String
    let image: String
    
    init(_ name: String, _ image: String){
        self.name = name
        self.image = image
    }
    
}
