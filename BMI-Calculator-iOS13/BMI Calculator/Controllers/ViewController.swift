//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
        heightLabel.text = String(format: "%1.1fm", sender.value)
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
        weightLabel.text = String(format: "%3.0fKg", sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: Any) {
        
        let height: Float = heightSlider.value
        
        let weight: Float = weightSlider.value
        
        let bmi: Float = weight / pow(height, 2)
        
        let secondVC = SecondViewController()
        
        secondVC.bmiValue = bmi
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
}

