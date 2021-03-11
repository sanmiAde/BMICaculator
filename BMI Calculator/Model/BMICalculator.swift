//
//  BMICalculator.swift
//  BMI Calculator
//
//  Created by sanmi_personal on 10/03/2021.
//

import Foundation

public struct BMICalculator {
    
   public var height : Int
   public var weight : Int
   public var bmi : Double = 0
    
    mutating func calculateBMI() -> Double {
        bmi = Double(weight) / pow(Double(height) / 100, 2)
        return bmi
    }
    
    func getResult() -> String {
        if (bmi >= 25) {
            return "Overweight"
        } else if (bmi > 18.5) {
            return "Normal"
        } else {
            return "Underweight"
        }
      }
    
    func getInterpretation() -> String {
       if (bmi >= 25) {
         return "You have a higher than normal body weight. Try to exercise more."
       } else if (bmi >= 18.5) {
         return "You have a normal body weight. Good job!"
       } else {
         return "You have a lower than normal body weight. You can eat a bit more."
       }
     }
}
