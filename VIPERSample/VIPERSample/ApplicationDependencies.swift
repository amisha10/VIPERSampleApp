//
//  ApplicationDependencies.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/1/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

class ApplicationDependencies {

var listRouter = ListRouter()

    init() {
        configure()
    }

    func launchRootviewControllerInWindow(window: UIWindow) {
        listRouter.presentListViewControllerInWindow(window: window)
    }

    func configure() {
        let rootRouter = RootRouter()
        let listPresenter = ListPresenter()
        let listInteractor = ListInteractor()

        listInteractor.listOutput = listPresenter

        listPresenter.listInteractor = listInteractor
        listPresenter.listRouter = listRouter

        listRouter.listPresenter = listPresenter
        listRouter.rootRouter = rootRouter
    }


}
