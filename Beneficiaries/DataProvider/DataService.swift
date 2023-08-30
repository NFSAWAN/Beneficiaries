//
//  DataService.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public class DataService {
    
    private let apiHandler : ApiHandler
    
    public init(apiHandler: ApiHandler = ApiHandler()) {
        self.apiHandler = apiHandler
    }
    
    public func getBeneficiariesList(completion: @escaping(Result<[BeneficiaryData],Error>) -> Swift.Void) {
        
        apiHandler.getBeneficiariesList() { result in
            
            switch result {
            case .success(let callList):
                completion(.success(callList))
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
