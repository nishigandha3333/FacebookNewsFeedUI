//
//  ViewController.swift
//  FacebookNewsFeedUI
//
//  Created by Nishigandha Dandekar on 4/17/21.
//

import UIKit

class BaseViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .blue
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "News Feed"
        view.backgroundColor = .lightGray
        
        setupLayout()
    }
    
    private func setupLayout() {
        //Add Subviews
        self.view.addSubview(collectionView)
        
        //Constraints
        collectionView.bindConstraintsToSuperview()
    }
}

