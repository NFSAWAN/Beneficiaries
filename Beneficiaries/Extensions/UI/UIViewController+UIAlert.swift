//
//  UIViewController+UIAlert.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public extension UIViewController {
    
    func presentAlert (_ error: Error,
                       title: String? = nil,
                       actions: [UIAlertAction]? = nil,
                       completion: (() -> Void)? = nil) {
        presentAlert(title: title, message: error.localizedDescription, actions: actions, completion: completion)
    }

    func presentAlert (title: String? = nil,
                       message: String? = nil,
                       actions: [UIAlertAction]? = nil,
                       textFields: [(UITextField) -> Void] = [],
                       completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let actions = actions ?? [.ok()]
        actions.forEach { alertController.addAction($0) }

        if !textFields.isEmpty {
            textFields.forEach { alertController.addTextField(configurationHandler: $0) }
        }

        present(alertController, animated: true, completion: completion)
    }
}
