//
//  ContentView.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed Abdelkarim on 4/3/20.
//  Copyright © 2020 Ahmed Abdelkarim. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //MARK: - Variables
    @EnvironmentObject var env:GlobalEnvironment
    let spacing:CGFloat = 16
    let calculatorButtons:[[CalculatorButton]] = [
        [.ac, .plusMinus, .percent, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .plus],
        [.one, .two, .three, .minus],
        [.zero, .period, .equals]
    ]
    
    
    //MARK: - View
    var body: some View {
        ZStack(alignment: .bottom) {
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack(spacing: spacing) {
                HStack {
                    Spacer()
                    Text(env.display)
                        .font(.custom("Helvetica", size: 80))
                        .foregroundColor(.white)
                }.padding()
                
                ForEach(calculatorButtons, id: \.self) { buttonsRow in
                    HStack(spacing: self.spacing) {
                        ForEach(buttonsRow, id: \.self) { button in
                            CalculatorButtonView(button: button)
                        }
                    }
                }
            }.padding(.bottom)
        }
    }
}


//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(GlobalEnvironment())
    }
}
