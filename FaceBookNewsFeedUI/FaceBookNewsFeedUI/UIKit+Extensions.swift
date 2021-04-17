//
//  UIKit+Extensions.swift
//  FacebookNewsFeedUI
//
//  Created by Nishigandha Dandekar on 4/24/21.
//

import UIKit

extension UIView {
    func bindConstraintsToSuperview(with insets: UIEdgeInsets = .zero) {
        let views = ["currentView" : self]

        let horizontalConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-\(insets.left)-[currentView]-\(insets.right)-|",
            options: .directionLeadingToTrailing,
            metrics: nil,
            views: views
        )
        let verticalConstraints = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-\(insets.top)-[currentView]-\(insets.bottom)-|",
            options: .directionLeadingToTrailing,
            metrics: nil,
            views: views
        )
        
        let allContraints = horizontalConstraints + verticalConstraints
        
        NSLayoutConstraint.activate(allContraints)
    }
}
