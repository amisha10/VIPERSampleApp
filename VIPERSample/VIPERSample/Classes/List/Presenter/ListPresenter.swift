//
//  ListPresenter.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 2/28/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit
class ListPresenter: NSObject, ListPresenterProtocol, ListOutputInteractorProtocol {
    var listView : ListViewProtocol?
    var listInteractor : ListInputInteractorProtocol?
    var listRouter : ListRouter?

    func dataForList() {
        listInteractor?.loadListData()
    }

    func listDataLoaded(listData: [ListItem]) {
        let finalList = listDisplayItemsFromItemList(listItems: listData)
        listView?.loadListWithData(data: finalList)
    }

    func listDisplayItemsFromItemList(listItems :[ListItem]) -> [ListDisplayItem] {
        var displayDataList = [ListDisplayItem]()
        for item in listItems {
            let displayItem = ListDisplayItem(title: item.itemTitle)
            displayDataList.append(displayItem)
        }
        return displayDataList
    }

    func showItemDetail(with item: ListDisplayItem, from viewController: UIViewController) {
        listRouter?.showDetailView(with: item, from: viewController)
    }
}
