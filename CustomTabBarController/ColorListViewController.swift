//
//  ColorListViewController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/6/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class ColorListViewController: UIViewController {

    // MARK: - METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print(segue.identifier)
    }

}
