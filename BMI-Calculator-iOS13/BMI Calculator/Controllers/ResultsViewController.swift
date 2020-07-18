//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mohamed Elbanhawi on 17/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    @IBOutlet weak var resultsBackground: UIImageView!
    
    var bmiValue: Float = 0.0
    var advice: String = ""
    var color: UIColor = .clear
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = String(format: "%.2f", bmiValue)
        adviceLabel.text = advice
        resultsBackground.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
    

}
