//
//  GenericDatasource.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

public class GenericDataSource<T> : NSObject {
    public var data = GenericObserver<[T]>([])
}
