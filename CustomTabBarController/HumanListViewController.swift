//
//  HumanListViewController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class HumanListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let baseNavigation = self.navigationController as? BaseNavigationController {
            baseNavigation.updateUI(data: .init(_title: "Animal", _type: .Animal))
            baseNavigation.didTapBackBtn = didTapBackButton
            baseNavigation.didTapForwardBtn = didTapForwardButton
        }
    }
}


// MARK: - CALLBACKS
extension HumanListViewController {
    private func didTapBackButton() {
        print(#function)
    }
    
    private func didTapForwardButton() {
        print(#function)
    }
}
