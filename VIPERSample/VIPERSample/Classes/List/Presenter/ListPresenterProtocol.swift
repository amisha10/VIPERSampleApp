//
//  ListPresenterProtocol.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 2/28/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

protocol ListPresenterProtocol {
    func dataForList()
    func showItemDetail(with item: ListDisplayItem, from viewController: UIViewController)
}
