//
//  Calculator.swift
//  BMI Calculator
//
//  Created by Sendo Tjiam on 16/08/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct Calculator {
    var bmi : BMI?;
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2);
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Please eat more bakmie", color: #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1));
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are super fit", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1));
        } else {
            bmi = BMI(value: bmiValue, advice: "Please eat less martabak", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1));
        }
    }
    
    func getBMI() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0);
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice, just eat less carbs and more protein";
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1);
    }
}
