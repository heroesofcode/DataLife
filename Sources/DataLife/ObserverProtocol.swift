//
//  File.swift
//  
//
//  Created by Joao Lucas on 29/08/20.
//

import Foundation

public protocol ObserverProtocol {
    var id : Int { get set }
    func onValueChanged(_ value: Any?)
}
