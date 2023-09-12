//
//  SubtractionViewController.swift
//  TabBarCalculator23-09-12
//
//  Created by 副山俊輔 on 2023/09/12.
//

import UIKit

class SubtractionViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var subtraction: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    @IBAction private func didTapSubtraction(_ sender: Any) {
        calculateSubtraction()
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }

    private func calculateSubtraction() {
        guard let firstValue = Int(firstTextField.text ?? ""),
              let secondValue = Int(secondTextField.text ?? "")
        else { return }

        let result = firstValue - secondValue
        resultLabel.text = "\(result)"
    }
}
