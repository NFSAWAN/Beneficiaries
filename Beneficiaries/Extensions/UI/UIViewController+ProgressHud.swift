//
//  UIViewController+ProgressHud.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public extension UIViewController {

    func presentProgressView(message: String? = nil, animated: Bool = true, completion: (() -> Void)? = nil) {
        let progressHud = UIProgressHudController()
        progressHud.modalPresentationStyle = .overFullScreen
        progressHud.modalTransitionStyle = .crossDissolve
        progressHud.message = message
        present(progressHud, animated: animated, completion: completion)
    }
}
