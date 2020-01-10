//
//  BaseNavigationController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/3/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {
    // MARK: - STRUCT
     struct Data {
        var title: String
        var type: NavBarType
        init(_title: String, _type: NavBarType) {
            title = _title
            type  = _type
        }
    }

    // MARK: - ENUMS
    enum NavBarType {
        case Animal, Human
    }
    
    // MARK: - VARS
    private var baseNavBar: BaseNavigationBar?
    var data: Data?
    var didTapBackBtn: (() -> ())?
    var didTapForwardBtn: (() -> ())?
    var isHidden: Bool {
        set {
            self.navigationBar.isHidden = newValue
        }
        
        get {
            return self.navigationBar.isHidden
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBaseNavigationBar()
    }
}


// MARK: - HELPER METHODS
extension BaseNavigationController {
    private func configureBaseNavigationBar() {
        baseNavBar = Bundle.main.loadNibNamed("BaseNavigationBar", owner: self, options: nil)?.first as? BaseNavigationBar
        if baseNavBar != nil {
            baseNavBar!.frame = .init(x: 0, y: 0, width: self.navigationBar.frame.width, height: 100)
            baseNavBar!.didTapBackBtn = didTapBack
            baseNavBar!.didTapForwardBtn = didTapForward
            self.navigationBar.addSubview(baseNavBar!)
        }
    }
    
     func updateUI(data: Data) {
        if data.type == .Animal {
            baseNavBar?.title = data.title
        } else {
            
        }
    }
}

// MARK: - CALLBACKS
extension BaseNavigationController {
    private func didTapBack() {
        didTapBackBtn?()
    }
    
    private func didTapForward() {
        didTapForwardBtn?()
    }
}
