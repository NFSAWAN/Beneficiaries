//
//  GenericObserver.swift
//  Beneficiaries
//
//  Created by Furqan Ali on 8/29/23.
//

import Foundation

public class GenericObserver<T> {
    
    public typealias ObserverCompletion = (T) -> ()
    
    public var observers: ObserverCompletion?
    
    public var value: T {
        didSet {
            observers?(value)
        }
    }
    
    init(_ value: T) {
        self.value = value
    }
    
    public func bind(observer: ObserverCompletion?) {
        self.observers = observer
        observers?(value)
    }
}
