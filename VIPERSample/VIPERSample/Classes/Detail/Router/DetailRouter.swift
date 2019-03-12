//
//  DetailRouter.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/5/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

class DetailRouter: NSObject {

   class func createDetailView(with item: ListDisplayItem, and view: DetailViewController)  {
        let presenter = DetailPresenter()
        presenter.detailItem = item
        view.presenter = presenter
        view.presenter?.detailView = view
        view.presenter?.detailRouter = DetailRouter()
    }

    func backToListView(from view: UIViewController) {

    }
}
