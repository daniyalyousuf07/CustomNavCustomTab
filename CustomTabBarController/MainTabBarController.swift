//
//  MainTabBarController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabBarController()
    }
}

extension MainTabBarController {
    private func configureTabBarController() {
        self.delegate = self
    }
}

extension MainTabBarController: UITabBarControllerDelegate {
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print(#function)
    }
}


