//
//  UITableViewCell+Standard.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public extension UITableViewCell {
    
    class func identifier() -> String {
         String(describing: self)
    }
}
