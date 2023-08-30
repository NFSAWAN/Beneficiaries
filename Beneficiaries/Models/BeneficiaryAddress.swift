//
//  BeneficiaryAddress.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

struct BeneficiaryAddress : Codable {
	let firstLineMailing : String?
	let scndLineMailing : String?
	let city : String?
	let zipCode : String?
	let stateCode : String?
	let country : String?
    
    func completeAddress() -> String {
        return "\(firstLineMailing ?? "") \(scndLineMailing ?? "") \(city ?? "") \(zipCode ?? "") \(stateCode ?? "") \(country ?? "")".replacingOccurrences(of: "  ", with: "")
    }
}
