import Foundation

struct CalculatorBrain {
  func calculateBmi(height: Float, weight: Float) -> Float {
    return weight / pow(height, 2)
  }
}
