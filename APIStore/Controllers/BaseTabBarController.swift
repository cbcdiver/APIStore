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
        
        viewControllers = [buildANavigationCon(theVC: UIViewController(), theTitle: "Today", theImage: #imageLiteral(resourceName: "today_icon")),
                           buildANavigationCon(theVC: UIViewController(), theTitle: "Apps", theImage: #imageLiteral(resourceName: "apps")),
                           buildANavigationCon(theVC: SearchCollectionViewController(), theTitle: "Search", theImage: #imageLiteral(resourceName: "search")),
        ]
    }

    func buildANavigationCon(theVC: UIViewController, theTitle: String, theImage:UIImage) -> UINavigationController {
        
        // Embed the given VC into an NVC
        let theNVC = UINavigationController(rootViewController: theVC)
        
        // Setup the NVC
        theNVC.navigationBar.prefersLargeTitles = true
        theNVC.tabBarItem.title = theTitle
        theNVC.tabBarItem.image = theImage
        
        // Setup the VC
        theVC.navigationItem.title = theTitle
        theVC.view.backgroundColor = .white
        
        return theNVC
    }
}
