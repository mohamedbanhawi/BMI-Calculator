//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mohamed Elbanhawi on 17/7/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMI() -> Float {
        return bmi?.value ?? 0.0
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
        
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
        
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight / pow(height, 2)
        
        if (bmiValue < 18.5) {
            bmi = BMI(value: bmiValue, advice: "Eat More", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }
        else if (bmiValue < 24.9) {
            bmi = BMI(value: bmiValue, advice: "Perfect", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Go for a run", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        
    }

    
}
