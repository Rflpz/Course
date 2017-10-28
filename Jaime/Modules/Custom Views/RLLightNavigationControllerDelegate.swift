//
//  RLLightNavigationControllerDelegate.swift
//  Jaime
//
//  Created by Rafael Lopez on 10/28/17.
//  Copyright © 2017 Rflpz. All rights reserved.
//

import Foundation
import UIKit

protocol backItem {
    
    func addBackItemButton(title: String)
}

extension backItem where Self: UIViewController {
    
    func addBackItemButton(title: String) {
        let barButton = UIBarButtonItem()
        barButton.title = title
        self.navigationItem.backBarButtonItem = barButton
    }
}

extension UIViewController: backItem {}
