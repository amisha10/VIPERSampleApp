//
//  ListItem.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/1/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation

struct ListItem {
    var itemTitle = ""
    var itemId = ""
    var imageUrl = ""

    init(attributes: [String: String]) {
        self.itemTitle = attributes["strDrink"]!
        self.itemId = attributes["idDrink"]!
        self.imageUrl = attributes["strDrinkThumb"]!
    }
}
