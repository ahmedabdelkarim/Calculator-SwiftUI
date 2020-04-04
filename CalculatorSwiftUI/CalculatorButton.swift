//
//  CalculatorButton.swift
//  CalculatorSwiftUI
//
//  Created by Ahmed Abdelkarim on 4/4/20.
//  Copyright © 2020 Ahmed Abdelkarim. All rights reserved.
//

import SwiftUI

enum CalculatorButton:String {
    //MARK: - Cases
    case period, zero, one, two, three, four, five, six, seven, eight, nine
    case equals, plus, minus, multiply, divide
    case ac, plusMinus, percent
    
    
    //MARK: - Properties
    var title:String {
        switch self {
        case .period: return "."
        case .zero: return "0"
        case .one: return "1"
        case .two: return "2"
        case .three: return "3"
        case .four: return "4"
        case .five: return "5"
        case .six: return "6"
        case .seven: return "7"
        case .eight: return "8"
        case .nine: return "9"
        case .equals: return "="
        case .plus: return "+"
        case .minus: return "−"
        case .multiply: return "×"
        case .divide: return "÷"
        case .ac: return "AC"
        case .plusMinus: return "±"
        case .percent: return "﹪"
        }
    }
    
    var backgroundColor:Color {
        switch self {
        case .equals, .plus, .minus, .multiply, .divide:
            return Color(.orange)
        case .ac, .plusMinus, .percent:
            return Color(.lightGray)
        default:
            return Color(.darkGray)
        }
    }
    
    var foregroundColor:Color {
        switch self {
        case .ac, .plusMinus, .percent:
            return Color(.black)
        default:
            return Color(.white)
        }
    }
}
