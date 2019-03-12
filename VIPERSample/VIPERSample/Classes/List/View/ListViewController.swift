//
//  ListViewController.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 2/28/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

var ListViewCellIdentifier = "ListViewCell"

class ListViewController : UITableViewController, ListViewProtocol {

    var presenter : ListPresenterProtocol?
    var itemListData = [ListDisplayItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.dataForList()
    }
    
    func loadListWithData(data: [ListDisplayItem]) {
        itemListData = data
        tableView.reloadData()
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfRows = itemListData.count

        return numberOfRows
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ListViewCellIdentifier, for: indexPath) as UITableViewCell
        let listItem = itemListData[indexPath.row]

        cell.textLabel?.text = listItem.title

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showItemDetail(with: itemListData[indexPath.row], from: self)
    }
}
