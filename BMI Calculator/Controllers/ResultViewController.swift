import UIKit

class ResultViewController: UIViewController {
  @IBOutlet var bmiLabel: UILabel!
  @IBOutlet var adviceLabel: UILabel!

  var bmiValue: Float?

  override func viewDidLoad() {
    super.viewDidLoad()

    bmiLabel.text = String(format: "%.1f", bmiValue ?? "N/A")
  }

  @IBAction func recalculatePressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }
}
