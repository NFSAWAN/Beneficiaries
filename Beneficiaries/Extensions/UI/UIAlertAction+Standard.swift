//
//  UIAlertAction+Standard.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public extension UIAlertAction {

    static func ok (title: String = .l10nButtonOk, _ handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
        return UIAlertAction(title: title, style: .default, handler: handler)
    }

    static func cancel (title: String = .l10nButtonCancel, _ handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
        return UIAlertAction(title: title, style: .cancel, handler: handler)
    }

    static func destructive (title: String, _ handler: ((UIAlertAction) -> Void)? = nil) -> UIAlertAction {
        return UIAlertAction(title: title, style: .destructive, handler: handler)
    }
}
