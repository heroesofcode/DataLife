//
//  ViewModel.swift
//  Example
//
//  Created by João Lucas on 06/10/23.
//

import Foundation
import DataLife

final class ViewModel: DataLifeViewModel {
    
    var myName = DataLife<String>()
    
    func fetchMyName() {
        myName.value = "JL"
    }
    
}
