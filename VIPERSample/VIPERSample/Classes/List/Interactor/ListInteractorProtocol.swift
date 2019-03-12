//
//  ListInteractorProtocol.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 2/28/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation

protocol ListInputInteractorProtocol {
    func loadListData()
}

protocol ListOutputInteractorProtocol {
    func listDataLoaded(listData: [ListItem])
}
