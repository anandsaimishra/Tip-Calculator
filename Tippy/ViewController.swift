//
//  ViewController.swift
//  Tippy
//
//  Created by Anand Sai Mishra on 7/9/20.
// print("My number is %d",number)

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var amountBeforeTaxTextField: UITextField!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipPercentageSlider: UISlider!
    @IBOutlet weak var noOfPeopleLabel: UILabel!
    @IBOutlet weak var noOfPeopleSlider: UISlider!
    @IBOutlet weak var eachPersonAmount: UILabel!
    @IBOutlet weak var totalResultLabel: UILabel!
    @IBOutlet weak var tipTotal: UILabel!
    
    var tipCalculator = TipCalculator(amountBeforeTax: 0, tipPercentage: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func calculateBill(){
        tipCalculator.tipPercentage = Double(tipPercentageSlider.value) / 100.0
        tipCalculator.amountBeforeTax = (amountBeforeTaxTextField.text! as NSString).doubleValue
        tipCalculator.calculateTip()
        updateUI()
    }
    @IBOutlet weak var TotalBillUpdate: UILabel!
    func updateUI(){
        totalResultLabel.text = String(format: "$%0.2f", tipCalculator.tipAmount)
        let numberOfPeople: Int = Int(noOfPeopleSlider.value)
        eachPersonAmount.text = String(format: "$%0.2f", tipCalculator.tipAmount / Double(numberOfPeople))
        tipTotal.text = String(format: "$%0.2f", tipCalculator.tip)
    }
    // Mark :- Target / Action
    
    @IBAction func tipSliderValueChanged(sender: Any){
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipPercentageSlider.value))
        calculateBill()
        
    }
    @IBAction func amountBeforeTaxTextFieldChange(sender: Any) {     calculateBill()
    }
    @IBAction func NumberOfPeopleValueChange(sender: Any){
        noOfPeopleLabel.text = String(format: "Bill Split in: %0d %", Int(noOfPeopleSlider.value))
    }
        
}

 
