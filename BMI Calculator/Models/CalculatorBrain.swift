import UIKit

struct CalculatorBrain {
  var bmi: BMI?

  func getBmiValue() -> Float {
    return bmi?.value ?? 0
  }

  func getAdvice() -> String {
    return bmi?.advice ?? "No advice"
  }

  func getColor() -> UIColor {
    return bmi?.color ?? .white
  }

  mutating func calculateBmi(height: Float, weight: Float) {
    let bmiValue = weight / pow(height, 2)

    if ...18.5 ~= bmiValue {
      bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .init(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    } else if 18.5 ..< 25 ~= bmiValue {
      bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .init(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
    } else {
      bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .init(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
    }
  }
}
