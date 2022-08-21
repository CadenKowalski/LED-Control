//
//  ViewModel.swift
//  LED Control
//
//  Created by Caden Kowalski on 8/21/22.
//

import SwiftUI

class ViewModel: ObservableObject {
    
    private var stripFunctions = StripFunctions()
    
    var isOn: Bool {
        get {
            stripFunctions.isOn
        } set {
            togglePower(isOn: newValue)
        }
    }
    
    func togglePower(isOn: Bool) {
        stripFunctions.togglePower(isOn: isOn)
    }
}
