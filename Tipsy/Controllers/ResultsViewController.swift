//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by iosdev on 18.5.2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var calculatedResult: Double?
    var numberOfPoeple: Int?
    var tipPercentage: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        totalLabel.text = String(format: "%.2f", calculatedResult ?? 0)
        settingsLabel.text = "Split between \(numberOfPoeple ?? 0) poeple, with \(tipPercentage ?? 0)% tip."
        
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
