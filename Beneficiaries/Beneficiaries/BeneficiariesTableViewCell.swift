//
//  BeneficiariesTableViewCell.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public class BeneficiariesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var beneTypeLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
 
    public func configure(_ beneficiariesData: BeneficiaryData)
    {
        firstNameLabel.text = .l10nTextTitleFirstName + (beneficiariesData.firstName ?? "")
        lastNameLabel.text = .l10nTextTitleLastName + (beneficiariesData.lastName ?? "")
        beneTypeLabel.text = .l10nTextTitleBeneType + (beneficiariesData.beneType ?? "")
        designationLabel.text = .l10nTextTitleDesignation + (String(describing:BeneficiaryType(rawValue: beneficiariesData.designationCode ?? "N")!))
    }
    
}
