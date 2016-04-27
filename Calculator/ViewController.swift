//
//  ViewController.swift
//  Calculator
//
//  Created by Felicia Weathers on 4/25/16.
//  Copyright © 2016 Felicia Weathers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false

    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text
            display.text = textCurrentlyInDisplay! + digit!
        } else {
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
//     Computed property. Get value and convert it to a Double and then set it to a String
    var displayValue: Double {
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
        }
    }

    @IBAction func performOperation(sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            if mathematicalSymbol == "π" {
                displayValue = M_PI
            } else if mathematicalSymbol == "√" {
                displayValue = sqrt(displayValue)
            }
        }
    }
}

