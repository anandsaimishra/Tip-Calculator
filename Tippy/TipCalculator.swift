//
//  TipCalculator.swift
//  Tip-Calculator-Pro
//
//  Created by Anand Sai Mishra on 7/8/20.
//  Copyright © 2020 Anand Sai Mishra. All rights reserved.
//

import Foundation

class TipCalculator {
    var amountBeforeTax: Double = 0
    var tipAmount: Double = 0
    var tipPercentage: Double = 0
    var totalAmount: Double = 0
    var tip: Double = 0
    
    init(amountBeforeTax: Double, tipPercentage: Double ){
        self.amountBeforeTax = amountBeforeTax
        self.tipPercentage = tipPercentage
    }
    func calculateTip() {
        tip = amountBeforeTax * tipPercentage
        tipAmount = amountBeforeTax * tipPercentage
        tipAmount = tipAmount + amountBeforeTax
    }
    
}
