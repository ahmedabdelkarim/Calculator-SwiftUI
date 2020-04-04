//
//  GlobalEnvironment.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed Abdelkarim on 4/4/20.
//  Copyright © 2020 Ahmed Abdelkarim. All rights reserved.
//

import SwiftUI

class GlobalEnvironment:ObservableObject {
    @Published var display = ""
    
    func receiveInput(button:CalculatorButton) {
        self.display = button.title
    }
}
