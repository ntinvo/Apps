//
//  ViewController.swift
//  Character Name Counter
//
//  Created by Tin N Vo on 8/31/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var txtName: UITextField!
    @IBOutlet var lblTotalChar: UILabel!
    
    var nameData = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculate(sender: AnyObject) {
        calculateFunc()
    }

    @IBAction func clear(sender: AnyObject) {
        clearFunc()
    }
    
    @IBAction func txtNameAct(sender: AnyObject) {
        calculateFunc()
    }
    
    func calculateFunc() {
        if (txtName != nil) {
            nameData = txtName.text!
            printChar()
        }
    }
    
    func clearFunc() {
        lblTotalChar.text = "0"
        txtName.text = ""
    }
    
    func printChar() {
        let nameArray = Array(nameData.characters)
        lblTotalChar.text = "\(nameArray.count)"
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        hideKeyboard()
    }
    
    func hideKeyboard() {
        txtName.resignFirstResponder()
    }
}

