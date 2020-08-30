//
//  File.swift
//  
//
//  Created by Joao Lucas on 29/08/20.
//

import Foundation

internal protocol ObserverProtocol {
    var id : Int { get set }
    func onValueChanged(_ value: Any?)
}

protocol DataLifeProtocol : class {
    var observers : [DataLifeProtocol] { get set }

    func observer(_ observer: ObserverProtocol)
    func notifyObservers(_ observers: [ObserverProtocol])
}
