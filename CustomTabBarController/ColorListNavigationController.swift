//
//  ColorListNavigationController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/6/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class ColorListNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Onboarding", bundle: nil)
               if let colorListViewController = storyboard.instantiateViewController(identifier: "ColorListViewController") as? ColorListViewController {
                   self.viewControllers = [colorListViewController]
               }
    }
}
