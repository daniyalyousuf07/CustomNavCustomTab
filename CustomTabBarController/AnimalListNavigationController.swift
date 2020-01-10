//
//  AnimalListNavigationController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class AnimalListNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let animalViewController = storyboard.instantiateViewController(identifier: "AnimalListViewController") as? AnimalListViewController {
            self.viewControllers = [animalViewController]
        }
    }
}
