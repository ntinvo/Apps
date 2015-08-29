//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Tin N Vo on 8/28/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userGuessTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    /* Action for the button Guess */
    @IBAction func guess(sender: AnyObject) {
        let diceRoll = String(arc4random_uniform(6))
        
        if userGuessTextField.text == "" {
            resultLabel.text = "Please Enter a Number"
        } else if diceRoll == userGuessTextField.text {
            resultLabel.text = "You are right!"
        } else {
            resultLabel.text = "Wrong! It was " + diceRoll
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

