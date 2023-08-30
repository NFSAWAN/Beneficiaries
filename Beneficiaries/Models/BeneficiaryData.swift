//
//  BeneficiariesData.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

public struct BeneficiaryData : Decodable {
    let lastName : String?
    let firstName : String?
    let designationCode : String?
    let beneType : String?
    let socialSecurityNumber : String?
    let dateOfBirth : String?
    let middleName : String?
    let phoneNumber : String?
    let beneficiaryAddress : BeneficiaryAddress?
    
}
