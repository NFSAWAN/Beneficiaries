//
//  UIProgressHudController.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public class UIProgressHudController: UIViewController {
    
    private var activity: UIActivityIndicatorView!
    private var messageLabel: UILabel!
    public var message: String?
    
    public override func viewDidLoad() {
        setup()
    }

    private func setup() {
        
        activity = UIActivityIndicatorView()
        activity.translatesAutoresizingMaskIntoConstraints = false
        activity.style = .large
        activity.startAnimating()
        self.view.addSubview(activity)
        self.view.centerYAnchor.constraint(equalTo: activity.centerYAnchor).isActive = true
        self.view.centerXAnchor.constraint(equalTo: activity.centerXAnchor).isActive = true
        
        messageLabel = UILabel()
        messageLabel.translatesAutoresizingMaskIntoConstraints = false
        messageLabel.textAlignment = .center
        messageLabel.textColor = .white
        messageLabel.numberOfLines = 0
        messageLabel.font = .preferredFont(forTextStyle: .body)
        messageLabel.text = message
        messageLabel.adjustsFontForContentSizeCategory = true
        self.view.addSubview(messageLabel)
        self.view.leadingAnchor.constraint(equalTo: messageLabel.leadingAnchor, constant: -20).isActive = true
        self.view.trailingAnchor.constraint(equalTo: messageLabel.trailingAnchor, constant: 20).isActive = true
        activity.bottomAnchor.constraint(equalTo: messageLabel.topAnchor, constant: -10).isActive = true
        
        self.view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.5)
    }
}
