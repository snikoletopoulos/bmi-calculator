import UIKit

class CalculateViewController: UIViewController {
  var calculatorBrain = CalculatorBrain()

  @IBOutlet var heightIndicator: UILabel!
  @IBOutlet var heightSlider: UISlider!

  @IBOutlet var weightIndicator: UILabel!
  @IBOutlet var weightSlider: UISlider!

  @IBAction func heightChanged(_ sender: UISlider) {
    heightIndicator.text = String(format: "%.2fm", sender.value)
  }

  @IBAction func weightChanged(_ sender: UISlider) {
    weightIndicator.text = "\(Int(sender.value))kg"
  }

  @IBAction func calculatePressed(_ sender: UIButton) {
    calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
    performSegue(withIdentifier: "goToResult", sender: self)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculatorBrain.getBmiValue()
      destinationVC.advice = calculatorBrain.getAdvice()
      destinationVC.color = calculatorBrain.getColor()
    }
  }
}
