//
//  RootRouter.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/1/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

class RootRouter : NSObject {

    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(window: inWindow)
        navigationController.viewControllers = [viewController]
    }

    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}
