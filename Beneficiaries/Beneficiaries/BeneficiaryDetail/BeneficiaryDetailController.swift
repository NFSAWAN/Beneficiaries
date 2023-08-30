//
//  BeneficiariesController.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public class BeneficiaryDetailController: BaseController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var beneTypeLabel: UILabel!
    @IBOutlet weak var designationLabel: UILabel!
    @IBOutlet weak var ssnLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!

    private var beneficiariesViewModel: BeneficiaryDetailViewModel? = nil
    
    func setBeneficiaryData(beneficiaryData:BeneficiaryData?) {
        beneficiariesViewModel = BeneficiaryDetailViewModel(beneficiaryData:beneficiaryData)
    }

    public override func bindView() {
        super.bindView()
        titleLabel.text = .l10nTextTitleBeneficiaryDetail
        firstNameLabel.text = .l10nTextTitleFirstName + (beneficiariesViewModel?.beneficiaryData?.firstName ?? "")
        lastNameLabel.text = .l10nTextTitleLastName + (beneficiariesViewModel?.beneficiaryData?.lastName ?? "")
        beneTypeLabel.text = .l10nTextTitleBeneType + (beneficiariesViewModel?.beneficiaryData?.beneType ?? "")
        designationLabel.text = .l10nTextTitleDesignation + (String(describing:BeneficiaryType(rawValue: beneficiariesViewModel?.beneficiaryData?.designationCode ?? "N")!))
        ssnLabel.text = .l10nTextTitleSSN + (beneficiariesViewModel?.beneficiaryData?.socialSecurityNumber ?? "")
        dateOfBirthLabel.text = .l10nTextTitleDateOfBirth + (beneficiariesViewModel?.beneficiaryData?.dateOfBirth?.formatDate() ?? "")
        phoneNumberLabel.text = .l10nTextTitlePhoneNumber + (beneficiariesViewModel?.beneficiaryData?.phoneNumber ?? "")
        addressLabel.text = .l10nTextTitleAddress + (beneficiariesViewModel?.beneficiaryData?.beneficiaryAddress?.completeAddress() ?? "")
    }
    
    public override func functionality() {
        super.functionality()
    }
    
    @IBAction func onBackPress(_ sender: UIButton) {
        popViewController(true)
    }
}
