import UIKit

class ResultViewController: UIViewController {
  @IBOutlet var bmiLabel: UILabel!
  @IBOutlet var adviceLabel: UILabel!

  var bmiValue: Float?

  override func viewDidLoad() {
    super.viewDidLoad()

    bmiLabel.text = String(format: "%.1f", bmiValue ?? "")
  }

  @IBAction func recalculatePressed(_ sender: UIButton) {
    dismiss(animated: true, completion: nil)
  }

  /*
   // MARK: - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // Get the new view controller using segue.destination.
       // Pass the selected object to the new view controller.
   }
   */
}
