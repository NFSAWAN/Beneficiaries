//
//  UIViewController+Standard.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public extension UIViewController {
    
    func hideNavigationBar (_ isNavigationBarHidden: Bool) {
        self.navigationController?.isNavigationBarHidden = isNavigationBarHidden
    }
    
    func popViewController (_ animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }
}
