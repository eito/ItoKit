//
//  UIView+Additions.swift
//  ItoKit
//
//  Created by Eric Ito on 12/28/19.
//  Copyright © 2019 Eric Ito. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    /// Embeds the receiver inside the supplied `parent` view with the given `insets`.
    ///
    /// - Parameter parent: The view to embed the receiver in
    /// - Parameter insets: The optional inset values to pin the receiver to the parent view with.
    ///
    @available(iOS 9.0, *)
    public func embed(in parent: UIView, insets: UIEdgeInsets = .zero) {
        
        if self.superview == nil {
            parent.addSubview(self)
        }
        
        translatesAutoresizingMaskIntoConstraints = false
        
        leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: insets.leading).isActive = true
        trailingAnchor.constraint(equalTo: parent.trailingAnchor, constant: insets.trailing).isActive = true
        bottomAnchor.constraint(equalTo: parent.bottomAnchor, constant: insets.bottom).isActive = true
        topAnchor.constraint(equalTo: parent.topAnchor, constant: insets.top).isActive = true
    }
}
