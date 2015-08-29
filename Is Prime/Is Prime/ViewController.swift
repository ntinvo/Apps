//
//  ViewController.swift
//  Is Prime
//
//  Created by Tin N Vo on 8/29/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /* Text field number */
    @IBOutlet weak var numberTextField: UITextField!
    
    /* The result label */
    @IBOutlet weak var resultLabel: UILabel!
    
    /* Is prime button */
    @IBAction func isItPrime(sender: AnyObject) {
        
        // Temporary var for the value that the user entered
        if let number = Int(numberTextField.text!) {
        
            // Variable to check the number
            var isPrime = true
        
            // Check the number
            if number == 1 {
                isPrime = false
            }
        
            if number != 2 && number != 1 {
                for var i = 2; i < number; i++ {
                    if number % i == 0 {
                        isPrime = false
                    }
                }
            }
        
            // Print out the resultz
            if isPrime {
                resultLabel.text = "\(number) is a prime number"
            } else {
                resultLabel.text = "\(number) is not a prime number"
            }
        } else {
            resultLabel.text = "Please enter a number!!!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

