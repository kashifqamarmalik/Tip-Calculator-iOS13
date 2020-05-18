//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    
    var tip = 0.10
    var numberOfPoepleToSplit = 2
    var userBillInput = ""
    var calculatedTip: Double = 0.00

    @IBAction func tipChanged(_ sender: UIButton) {
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        
        let buttonTitle = sender.currentTitle!
        
        let buttonTitleMinusPercentageSign = String(buttonTitle.dropLast())
        
        print(buttonTitleMinusPercentageSign)
        
        let buttonTitleAsANumber = Double(buttonTitleMinusPercentageSign)!
        
        tip = buttonTitleAsANumber/100
       
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        numberOfPoepleToSplit = Int(sender.value)
    }
    
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        userBillInput = billTextField.text ?? "no bill amount added"
        
        
        calculatedTip = (Double(userBillInput) ?? 0.00)*(Double(tip))
        
        calculatedTip = calculatedTip/Double(numberOfPoepleToSplit)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultsViewController
        destinationVC.calculatedResult = calculatedTip
        destinationVC.numberOfPoeple = Int(numberOfPoepleToSplit)
        destinationVC.tipPercentage = Int(tip*100)
    }
    
}

