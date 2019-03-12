//
//  DetailPresenter.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/5/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

class DetailPresenter: NSObject {

    var detailItem : ListDisplayItem?
    var detailView : DetailViewProtocol?
    var detailRouter : DetailRouter?
    
    func loadItemDetail () {
        detailView?.loadDetailViewWithItem(item: detailItem!)
    }
}
