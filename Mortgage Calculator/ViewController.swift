//
//  ViewController.swift
//  Mortgage Calculator
//
//  Created by Chris Boshoff on 2022/06/07.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var purchasePriceTextField: UITextField!
    @IBOutlet weak var depositTextField: UITextField!
    @IBOutlet weak var interestTextField: UITextField!
    @IBOutlet weak var loanTermLabel: UILabel!
    @IBOutlet weak var loanTermTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var yearsSlider: UISlider!
    
    let calculator = Calculator()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var price: Double? {
        return Double(purchasePriceTextField.text!)
    }
    var deposit: Double? {
        return Double(depositTextField.text!)
    }
    var interest: Double? {
        return Double(interestTextField.text!)
    }
    var loanTerm: Double? {
        return Double(loanTermTextField.text!)
    }
    

    @IBAction func calculateTapped(_ sender: Any) {
        
        if let price = self.price,
           let deposit = self.deposit,
           let interest = self.interest,
           let loanTerm = self.loanTerm
        {
            let result = calculator.calculate(price: price, deposit: deposit, interest: interest, loanTerm: loanTerm)
            print(result)
            //resultLabel.text = String(result)
            resultLabel.text = String(format: "%.2f", result)
            
        }
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        
        let years = String(format: "%.0f", sender.value)
        loanTermTextField.text = "\(years)"
        
    }
    
}

