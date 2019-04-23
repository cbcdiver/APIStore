//
//  BaseTabBarController.swift
//  APIStore
//
//  Created by Chris Chadillon on 2019-04-23.
//  Copyright © 2019 Chris Chadillon. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }

    func buildANavigationVC(theVC: UIViewController, theTitle: String, theImage:UIImage) -> UINavigationController {
        
        let theNVC = UINavigationController(rootViewController: theVC)
        
        return theNVC
    }
    
}
