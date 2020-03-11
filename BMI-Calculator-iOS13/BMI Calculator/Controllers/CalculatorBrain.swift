//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Marc Lassort on 10/03/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    var adviceToDisplay: BMI?
    var colorToDisplay: BMI?
    
    var bmiValue: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        let anAdvice = bmi?.advice ?? "Error."
        return anAdvice
    }
    
    func getColor() -> UIColor {
        let aColor = bmi?.color ?? UIColor.red
        return aColor
    }
}

