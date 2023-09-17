//
//  ViewController.swift
//  TabBarCalculator23-09-12
//
//  Created by 副山俊輔 on 2023/09/12.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var firstTextField: UITextField!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }

    @IBAction private func didTapAddButton(_ sender: Any) {
        calculateSubtraction()
        firstTextField.resignFirstResponder()
        secondTextField.resignFirstResponder()
    }

    private func calculateSubtraction() {
        guard let firstValue = Int(firstTextField.text ?? ""),
              let secondValue = Int(secondTextField.text ?? "")
        else { return }

        let result = firstValue + secondValue
        resultLabel.text = "\(result)"
    }

}
