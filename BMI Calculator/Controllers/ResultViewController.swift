import UIKit

class ResultViewController: UIViewController {
  @IBOutlet var bmiLabel: UILabel!
  @IBOutlet var adviceLabel: UILabel!
  @IBOutlet var background: UIImageView!

  var bmiValue: Float?
  var advice: String?
  var color: UIColor?

  override func viewDidLoad() {
    super.viewDidLoad()

    bmiLabel.text = if let bmi = bmiValue {
      String(format: "%.1f", bmi)
    } else {
      "N/A"
    }
    adviceLabel.text = advice
    background.backgroundColor = color
  }

  @IBAction func recalculatePressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
}
