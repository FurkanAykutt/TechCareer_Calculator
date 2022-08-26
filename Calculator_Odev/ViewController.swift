//
//  ViewController.swift
//  Calculator_Odev
//
//  Created by Ebubekir Aykut on 26.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "0"
    }

    @IBAction func numberPressed(_ sender: UIButton) {
        if runningNumber.count <= 8 {
            runningNumber += "\(sender.tag - 1)"
            resultLabel.text = runningNumber
        }
    }

    @IBAction func plusButton(_ sender: Any) {
        if runningNumber != "" {
            rightValue = runningNumber
            runningNumber = ""
        }
    }
    @IBAction func equalButton(_ sender: Any) {
        if runningNumber != "" {
            leftValue = runningNumber
            runningNumber = ""
        }
        result = "\(Int(rightValue)! + Int(leftValue)!)"
        resultLabel.text = result
    }
    
    @IBAction func acButton(_ sender: Any) {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        resultLabel.text = "0"
    }
}

