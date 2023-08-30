//
//  ApiHandler.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import UIKit

public enum ApiError: Error {
    case unknown
    case decodingError
    case noData
}

public class ApiHandler {
    
    
    public init() {
    }
    
    public func getBeneficiariesList(completion: @escaping(Result<[BeneficiaryData],Error>) -> Swift.Void){
       
        if let url = Bundle.main.url(forResource: "Beneficiaries", withExtension: "json") {
              do {
                  let data = try Data(contentsOf: url)
                  let decoder = JSONDecoder()
                  let beneficiariesDataList = try decoder.decode([BeneficiaryData].self, from: data)
                  completion(.success(beneficiariesDataList))
              } catch {
                  completion(.failure(ApiError.decodingError))
              }
        } else {
            completion(.failure(ApiError.decodingError))
        }
//        networkHandler.fetch(url:.l10nApiEndPointCall, params: [:]) { result in
//            
//            switch result {
//            case .success(let data):
//                guard let data = data else {
//                    completion(.failure(ApiError.unknown))
//                    return
//                }
//                guard let callList = try? JSONDecoder().decode([BeneficiariesData].self, from: data) else {
//                    completion(.failure(ApiError.decodingError))
//                    return
//                }
//                completion(.success(callList))
//            case .failure(let error):
//                completion(.failure(error))
//            }
//        }
    }
    
}
