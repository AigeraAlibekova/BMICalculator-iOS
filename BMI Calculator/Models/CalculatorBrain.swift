import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
    //        BMI Body Mass Index = kg/m^2
        let bmiValue = weight/pow(height, 2)
        
        if bmiValue  < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .blue)
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "U r ok.", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat healthy!", color: .red)
        }
    }
    
    func getBMIValue() -> String {
        let bmiTo1Decimal = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1Decimal
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
}
