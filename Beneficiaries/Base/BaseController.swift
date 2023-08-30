//
//  BaseController.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

protocol Configurable {
    func bindView()
    func functionality()
}

public class BaseController: UIViewController, Configurable {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        hideNavigationBar(true)
        bindView()
        functionality()
    }
    
    func bindView() {}
    
    func functionality() {}
    
    public func showHideLoader(_ isShow: Bool) {
        if(isShow) {
            self.presentProgressView()
        } else {
            self.dismiss(animated: true)
        }
    }
}
