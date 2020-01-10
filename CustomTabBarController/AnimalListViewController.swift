//
//  AnimalListViewController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class AnimalListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.navigationBar.isHidden = true
        self.title = "Animal"
    }
    
    @IBAction private func didTapProceed(sender: UIButton) {
       let onboardingSB = UIStoryboard(name: "Onboarding", bundle: nil)
       if let step1VC = onboardingSB.instantiateViewController(identifier: "Step1ViewController") as? Step1ViewController {
            self.navigationController?.pushViewController(step1VC, animated: true)
        }
    }
}
