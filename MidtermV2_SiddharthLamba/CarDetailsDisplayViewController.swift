//
//  CarDetailsDisplayViewController.swift
//  MidtermV2_SiddharthLamba
//
//  Created by Siddharth Lamba on 2025-02-16.
//

import UIKit

class CarDetailsDisplayViewController: UIViewController {

    @IBOutlet weak var makeLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var colorLabel: UILabel!
    @IBOutlet weak var kmsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        loadCarDetails()
    }

    func loadCarDetails() {
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate, let car = appDelegate.carDetails {
            makeLabel.text = "\(car.make)"
            modelLabel.text = "\(car.model)"
            yearLabel.text = "\(car.year)"
            colorLabel.text = "\(car.color)"
            kmsLabel.text = "\(car.kms)"
        } else {
            makeLabel.text = "No car details available"
            modelLabel.text = ""
            yearLabel.text = ""
            colorLabel.text = ""
            kmsLabel.text = ""
        }
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
