//
//  ViewController.swift
//  Animations
//
//  Created by Tin N Vo on 8/30/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1

    @IBOutlet var image: UIImageView!
    
    @IBAction func update(sender: AnyObject) {
        if counter == 8 {
            counter = 1
        } else {
            counter++
        }
        image.image = UIImage(named: "frame\(counter).png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /* Is called just before the view is displayed on the screen */
    override func viewDidLayoutSubviews() {
        image.center = CGPointMake(image.center.x - 400, image.center.y)
    }

    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1) { () -> Void in
            self.image.center = CGPointMake(self.image.center.x + 400, self.image.center.y)
        }
    }

}

