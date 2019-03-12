//
//  ListRouter.swift
//  MixThemUp
//
//  Created by Amisha Goyal on 3/1/19.
//  Copyright © 2019 Amisha Goyal. All rights reserved.
//

import Foundation
import UIKit

let ListViewControllerIdentifier = "ListViewController"

class ListRouter : NSObject {
    var rootRouter : RootRouter?
    var listPresenter : ListPresenter?
    var listViewController : ListViewController?

    func presentListViewControllerInWindow(window: UIWindow) {
        let viewController = listViewControllerFromStoryboard()
        viewController.presenter = listPresenter
        listPresenter!.listView = viewController
        rootRouter?.showRootViewController(viewController: viewController, inWindow: window)
    }

    func listViewControllerFromStoryboard() -> ListViewController {
        let storyboard = mainStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: ListViewControllerIdentifier) as! ListViewController
        return viewController
    }

    func mainStoryboard() -> UIStoryboard {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard
    }

    func showDetailView(with item: ListDisplayItem, from viewController : UIViewController) {
        let detailViewController = viewController.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        DetailRouter.createDetailView(with: item, and: detailViewController)
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
