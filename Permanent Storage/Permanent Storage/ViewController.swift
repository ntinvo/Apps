//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Tin N Vo on 8/29/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set Object "Tin" with key "name"
        NSUserDefaults.standardUserDefaults().setObject("Tin", forKey: "name")
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")!
        print(userName)
        
        // Set Object array with key "array"
        let arr = [1, 2, 3, 4]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let retArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        print(retArray)
        
        // If want to print out, has to convert the "Object" back to array (as! NSArray)
        for x in retArray {
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

