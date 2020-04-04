//
//  CalculatorButtonView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed Abdelkarim on 4/4/20.
//  Copyright © 2020 Ahmed Abdelkarim. All rights reserved.
//

import SwiftUI

struct CalculatorButtonView: View {
    //MARK: - Variables
    @EnvironmentObject var env:GlobalEnvironment
    let spacing:CGFloat = 16
    var button:CalculatorButton
    
    
    //MARK: - View
    var body: some View {
        Button(action: {
            self.env.receiveInput(button: self.button)
        }) {
            Text(button.title)
                .font(.system(size: 32))
                .frame(width: self.buttonWidth(button: button), height: self.buttonHeight(button: button))
                .background(button.backgroundColor)
                .foregroundColor(button.foregroundColor)
                .cornerRadius(self.buttonWidth(button: button))
        }
    }
    
    
    //MARK: - Functions
    private func buttonWidth(button: CalculatorButton) ->CGFloat {
        switch button {
        case .zero:
            return (UIScreen.main.bounds.width - 4 * spacing) / 2
        default:
            return (UIScreen.main.bounds.width - 5 * spacing) / 4
        }
    }
    
    private func buttonHeight(button: CalculatorButton) ->CGFloat {
        return (UIScreen.main.bounds.width - 5 * spacing) / 4
    }
}
