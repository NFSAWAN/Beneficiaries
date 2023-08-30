//
//  BeneficiariesViewModel.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

public final class BeneficiariesViewModel {
    public var isLoading = GenericObserver<Bool?>(nil)
    public var error = GenericObserver<Error?>(nil)
    
    public var beneficiariesDatasource: GenericDataSource<BeneficiaryData>
    private var dataService: DataService?
    
    init(dataService: DataService = DataService(),
         beneficiariesDatasource: GenericDataSource<BeneficiaryData> = BeneficiariesDatasource()) {
        self.dataService = dataService
        self.beneficiariesDatasource = beneficiariesDatasource
    }
}

extension BeneficiariesViewModel {
    
    public func loadData() {
        popoluateBeneficiariesList()
    }
    
    private func popoluateBeneficiariesList()
    {
        self.isLoading.value = true

        dataService?.getBeneficiariesList() { result in
            
            self.isLoading.value = false

            switch result {
            case .success(let callList):
                self.beneficiariesDatasource.data.value = callList
            case .failure(let error):
                self.error.value = error
            }
        }
    }
}
