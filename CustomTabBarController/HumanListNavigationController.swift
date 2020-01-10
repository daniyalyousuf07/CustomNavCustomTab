//
//  HumanListNavigationController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class HumanListNavigationController: BaseNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let humanListViewController = storyboard.instantiateViewController(identifier: "HumanListViewController") as? HumanListViewController {
            self.viewControllers = [humanListViewController]
        }
    }
}
