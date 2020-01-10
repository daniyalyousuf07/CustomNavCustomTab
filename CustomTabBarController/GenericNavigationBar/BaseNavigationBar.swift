//
//  BaseNavigationBar.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class BaseNavigationBar: UINavigationBar {
    
    // MARK: - IBOUTLETS
    @IBOutlet private weak var lblTitle: UILabel!
    
    // MARK: - VARS
    var didTapBackBtn: (() -> Void)?
    var didTapForwardBtn: (() -> Void)?
    
    var title: String {
        set {
            lblTitle.text = newValue
        } get {
            return lblTitle.text!
        }
    }
    
    // MARK: - METHODS
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // MARK: - IBACTIONS
    
    @IBAction func didTapBack(_ sender: UIButton) {
        didTapBackBtn?()
    }
    
    @IBAction func didTapForward(_ sender: UIButton) {
        didTapForwardBtn?()
    }
    
}
