//
//  UIEdgeInsets+Additions.swift
//  ItoKit
//
//  Created by Eric Ito on 12/28/19.
//  Copyright © 2019 Eric Ito. All rights reserved.
//

import Foundation
import UIKit

extension UIEdgeInsets {
    
    /// Returns the leading value based on current user interface layout direction.
    ///
    public var leading: CGFloat {
        
        if UIApplication.shared.userInterfaceLayoutDirection == .leftToRight {
            return left
        } else {
            return right
        }
    }
    
    /// Returns the trailing value based on current user interface layout direction.
    ///
    public var trailing: CGFloat {
        if UIApplication.shared.userInterfaceLayoutDirection == .leftToRight {
            return right
        } else {
            return left
        }
    }
}

