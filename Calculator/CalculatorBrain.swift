//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Felicia Weathers on 4/26/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import Foundation

class CalculatorBrain
{
    private var accumulator = 0.0
    
    func setOperand(operand: Double) {
        accumulator = operand
    }
    
    func performOperation(symbol: String) {
        switch symbol {
        case "π": accumulator = M_PI
        case "√": accumulator = sqrt(accumulator)
        default: break
        }
    }
    
    var result: Double {
        get {
            return accumulator
        }
    }
}