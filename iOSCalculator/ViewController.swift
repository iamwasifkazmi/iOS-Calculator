//
//  ViewController.swift
//  iOSCalculator
//
//  Created by Wasif Kazmi on 14/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var currentCalculation = ""
    var x = ""
    var operation: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hello World")
    }
    
    @IBAction func btnPressed(_ sender: UIButton) {
        if let btnValue = sender.titleLabel?.text {
            currentCalculation += btnValue
            textLabel.text = currentCalculation
        }
    }
    
    @IBAction func clearBtn(_ sender: UIButton) {
        currentCalculation = ""
        x = ""
        operation = ""
        textLabel.text = "0"
    }
    
    @IBAction func plusBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            x = currentCalculation
            currentCalculation = ""
            operation = "+"
        }
    }
    @IBAction func equalBtn(_ sender: UIButton) {
        
        if let result = performCalculation() {
            textLabel.text = result
            currentCalculation = result
        }
        
    }
    
    @IBAction func minusBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            x = currentCalculation
            currentCalculation = ""
            operation = "-"
        }
    }
    
    @IBAction func mulBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            x = currentCalculation
            currentCalculation = ""
            operation = "*"
        }
    }
    
    @IBAction func devBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            x = currentCalculation
            currentCalculation = ""
            operation = "/"
        }
    }
    
    @IBAction func modBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            x = currentCalculation
            currentCalculation = ""
            operation = "%"
        }
        
    }
    
    @IBAction func togBtn(_ sender: UIButton) {
        if !currentCalculation.isEmpty {
            if currentCalculation.first == "-" {
                currentCalculation.removeFirst()
            } else {
                currentCalculation = "-" + currentCalculation
            }
            textLabel.text = currentCalculation
        }
    }
    
    func performCalculation() -> String? {
        if !x.isEmpty, let numX = Double(x), !currentCalculation.isEmpty, let numY = Double(currentCalculation) {
            switch operation {
            case "+":
                let result = numX + numY
                return String(result)
            case "-":
                let result = numX - numY
                return String(result)
            case "*":
                let result = numX * numY
                return String(result)
            case"/":
                if numY != 0 {
                    let result = numX / numY
                    return String(result)
                } else {
                    return "Error"
                }
            case "%":
                if numY != 0 {
                    let result = numX.truncatingRemainder(dividingBy: numY)
                    return String(result)
                } else {
                    return "Error"
                }
            default:
                return nil
            }
        }
        return nil
    }
}







