//
//  ViewController.swift
//  Facebook
//
//  Created by Kairzhan Kural on 10/20/20.
//  Copyright © 2020 Kairzhan Kural. All rights reserved.
//

import UIKit

class FeedViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        collectionView.backgroundColor = .white
        title = "Facebook Feed"
        setupNavBar()
    }
    
    private func setupNavBar() {
        navigationController?.navigationBar.barTintColor = UIColor(red: 51/255, green: 90/255, blue: 149/255, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }


}

