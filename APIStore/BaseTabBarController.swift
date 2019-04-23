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
        
        viewControllers = [buildANavigationVC(theVC: UIViewController(), theTitle: "Today", theImage: #imageLiteral(resourceName: "today_icon")),
                           buildANavigationVC(theVC: UIViewController(), theTitle: "Apps", theImage: #imageLiteral(resourceName: "apps")),
                           buildANavigationVC(theVC: UIViewController(), theTitle: "Search", theImage: #imageLiteral(resourceName: "search")),
        ]
    }

    func buildANavigationVC(theVC: UIViewController, theTitle: String, theImage:UIImage) -> UINavigationController {
        
        let theNVC = UINavigationController(rootViewController: theVC)
        
        theNVC.navigationBar.prefersLargeTitles = true
        theNVC.tabBarItem.title = theTitle
        theNVC.tabBarItem.image = theImage
        
        theVC.navigationItem.title = theTitle
        theVC.view.backgroundColor = .white
        
        return theNVC
    }
}
