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
    @IBOutlet private weak var addButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
    }


}

