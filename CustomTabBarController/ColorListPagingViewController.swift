//
//  ColorListPagingViewController.swift
//  CustomTabBarController
//
//  Created by Daniyal Yousaf on 1/6/20.
//  Copyright © 2020 Daniyal Yousuf. All rights reserved.
//

import UIKit

class ColorListPagingViewController: UIPageViewController {

    // MARK: - VARS
    internal lazy var pageControllers: [UIViewController]  =  {

       return [
        UIStoryboard(name: "Onboarding", bundle: nil).instantiateViewController(withIdentifier: "PagingFirstViewController"),
        UIStoryboard(name: "Onboarding", bundle: nil).instantiateViewController(withIdentifier: "PagingSecondViewController")
        
        ]
    }()

    
    // MARK: - METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        self.dataSource = self
        setInitialController()
    }

}

//MARK:- PAGEVIEWCONTROLLER METHODS
extension ColorListPagingViewController: UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let currentControllerIndex = pageControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        
        if (currentControllerIndex - 1) < 0 {
            
            return nil
        }
        
        
        return self.pageControllers[currentControllerIndex - 1]
        
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        
       
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let currentControllerIndex = pageControllers.firstIndex(of: viewController) else {
            return nil
        }
        
        
        if (currentControllerIndex + 1) > self.pageControllers.count - 1 {
            
            return nil
        }
        
        return self.pageControllers[currentControllerIndex + 1]
        
    }
    
    
}



//MARK:- HELPER METHODS
extension ColorListPagingViewController {
    
    fileprivate func setInitialController() {
        
        if let firstViewController = self.pageControllers.first {
            
            setViewControllers([firstViewController], direction: .forward, animated: true,
                               completion: nil)
        }
        
        
    }
    
}

