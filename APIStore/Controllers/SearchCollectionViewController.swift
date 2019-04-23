//
//  SearchCollectionViewController.swift
//  APIStore
//
//  Created by Chris Chadillon on 2019-04-23.
//  Copyright © 2019 Chris Chadillon. All rights reserved.
//

import UIKit

class SearchCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    init() {
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
