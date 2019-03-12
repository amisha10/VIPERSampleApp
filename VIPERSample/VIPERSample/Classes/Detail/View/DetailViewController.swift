//
//  DetailViewController.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/5/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController, DetailViewProtocol {
    @IBOutlet var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    var presenter : DetailPresenter?


    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.loadItemDetail()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func loadDetailViewWithItem(item: ListDisplayItem) {
        detailLabel.text = item.title
    }
}
