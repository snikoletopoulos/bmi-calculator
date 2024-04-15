import UIKit

class CalculateViewController: UIViewController {
  var calculatorBrain = CalculatorBrain()

  @IBOutlet var heightIndicator: UILabel!
  @IBOutlet var heightSlider: UISlider!

  @IBOutlet var weightIndicator: UILabel!
  @IBOutlet var weightSlider: UISlider!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func heightChanged(_ sender: UISlider) {
    heightIndicator.text = String(format: "%.2fm", sender.value)
  }

  @IBAction func weightChanged(_ sender: UISlider) {
    weightIndicator.text = "\(Int(sender.value))kg"
  }

  @IBAction func calculatePressed(_ sender: UIButton) {
    performSegue(withIdentifier: "goToResult", sender: self)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToResult" {
      let destinationVC = segue.destination as! ResultViewController
      destinationVC.bmiValue = calculatorBrain.calculateBmi(height: heightSlider.value, weight: weightSlider.value)
    }
  }
}
