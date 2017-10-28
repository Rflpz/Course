//
//  RLLightNavigationController.swift
//  Jaime
//
//  Created by Rafael Lopez on 10/28/17.
//  Copyright © 2017 Rflpz. All rights reserved.
//

import UIKit

class RLLightNavigationController: UINavigationController  {
    
    override func viewDidLoad() {
        self.delegate = self
        self.interactivePopGestureRecognizer?.delegate = self
        self.navigationBar.isTranslucent = false
        self.navigationBar.barTintColor = .white
        self.navigationBar.tintColor = UIColor.mainColor()
        self.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.mainColor(), NSAttributedStringKey.font: UIFont(name: "Avenir", size: 18)!]
    }
}

extension RLLightNavigationController: UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        viewController.addBackItemButton(title: "")
    }
}

extension RLLightNavigationController: UIGestureRecognizerDelegate {
    
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        if let _ = self.navigationController as? RLLightNavigationController {
            if self.topViewController == self.viewControllers.first {
                return false
            }
            return true
        }
        return false
    }
}
