//
//  ListInteractor.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 2/28/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation

class ListInteractor : NSObject, ListInputInteractorProtocol {
    var listOutput : ListOutputInteractorProtocol?
    
    func loadListData() {
        let dataList = listFromDataSource()
        listOutput?.listDataLoaded(listData: dataList)
    }

    func listFromDataSource() -> [ListItem] {
        var itemList = [ListItem]()
        let fakeItemList = DataSource.generateDataList()
        for item in fakeItemList {
            itemList.append(ListItem(attributes: item))
        }
        return itemList
    }

}
