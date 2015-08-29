//
//  ViewController.swift
//  Controling the Keyboard
//
//  Created by Tin N Vo on 8/29/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var userTextField: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func button(sender: AnyObject) {
        let userInput = userTextField.text
            resultLabel.text = userInput
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.userTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**** HAVE TO HAVE THESE TWO FUNCS IN ALMOST EVERY APP ***/
    
    /* Tap outside the keyboard, the keyboard will disappear */
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /* Press the return key on the keyboard, the keyboard will disappear */
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

