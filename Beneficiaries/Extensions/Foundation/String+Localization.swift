//
//  String+Localization.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

public extension String {
        
    static func l10n (key: String, args: [CVarArg]? = nil) -> String {
            let format = NSLocalizedString(key, comment: "")
            if let args = args {
                return String(format: format, arguments: args)
            } else {
                return format
            }
        }
}

public extension String {
    
    static var l10nButtonOk: String { l10n(key: "button_ok") }
    static var l10nButtonCancel: String { l10n(key: "button_cancel") }
    static var l10nTextTitleFirstName: String { l10n(key: "text_title_first_name") }
    static var l10nTextTitleLastName: String { l10n(key: "text_title_last_name") }
    static var l10nTextTitleBeneType: String { l10n(key: "text_title_bene_type") }
    static var l10nTextTitleDesignation: String { l10n(key: "text_title_designation") }
    static var l10nTextTitleSSN: String { l10n(key: "text_title_ssn") }
    static var l10nTextTitleDateOfBirth: String { l10n(key: "text_title_date_of_birth") }
    static var l10nTextTitlePhoneNumber: String { l10n(key: "text_title_phone_number") }
    static var l10nTextTitleAddress: String { l10n(key: "text_title_address") }
    static var l10nTextTitleBeneficiaries: String { l10n(key: "text_title_beneficiaries") }
    static var l10nTextTitleBeneficiaryDetail: String { l10n(key: "text_title_beneficiary_detail") }
}

public extension String {
    
    func formatDate() -> String? {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "MMddyyyy"
        
        if let date = inputFormatter.date(from: self) {
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = "MM/dd/yyyy"
            return outputFormatter.string(from: date)
        }
        return self
    }
    
}
