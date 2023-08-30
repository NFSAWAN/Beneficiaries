//
//  Error+Detail.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

extension ApiError: LocalizedError {
    public var errorDescription: String? {
        
        switch self {
        case .unknown:
            return NSLocalizedString("Unknown", comment: "Unknown")
        case .decodingError:
            return NSLocalizedString("Error decoding data", comment: "Decoding Error")
        case .noData:
            return NSLocalizedString("No Data", comment: "No Data")
        }
    }
}
