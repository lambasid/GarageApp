//
//  CarDetailsViewController.swift
//  MidtermV2_SiddharthLamba
//
//  Created by Siddharth Lamba on 2025-02-16.
//

import UIKit

class CarDetailsViewController: UIViewController {

    @IBOutlet weak var makeTextField: UITextField!
    @IBOutlet weak var modelTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var colorSegmentControl: UISegmentedControl!
    @IBOutlet weak var kmsTextField: UITextField!

    let colorOptions = ["Black", "White", "Olive", "Gray", "Green"]  // Color choices

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func submitButtonTapped(_ sender: UIButton) {
        guard let make = makeTextField.text, !make.isEmpty,
                      let model = modelTextField.text, !model.isEmpty,
                      let year = yearTextField.text, !year.isEmpty,
                      let kms = kmsTextField.text, !kms.isEmpty else {
                    showAlert(title: "Error", message: "Please fill in all fields.")
                    return
    }
    
        let selectedColor = colorOptions[colorSegmentControl.selectedSegmentIndex]

        // Confirmation Alert
        let alert = UIAlertController(title: "Confirm Submission",
                                      message: "Are you sure you want to save these details?",
                                      preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: { _ in
            self.saveCarDetails(make: make, model: model, year: year, color: selectedColor, kms: kms)
        }))

        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }

    func saveCarDetails(make: String, model: String, year: String, color: String, kms: String) {
        let car = Car(make: make, model: model, year: year, color: color, kms: kms)

        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.carDetails = car  // Save the object in AppDelegate
        }

        showAlert(title: "Success", message: "Car details saved successfully!")
    }

    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
//    @IBAction func goToDisplayPage(_ sender: UIButton) {
//        // ✅ Navigate to the display page
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let displayVC = storyboard.instantiateViewController(withIdentifier: "CarDetailsDisplayViewController") as? CarDetailsDisplayViewController {
//            navigationController?.pushViewController(displayVC, animated: true)
//        }
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
