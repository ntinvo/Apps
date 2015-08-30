//
//  ViewController.swift
//  Weather
//
//  Created by Tin N Vo on 8/30/15.
//  Copyright © 2015 Tin Vo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var citytextField: UITextField!
    
    @IBAction func findWeather(sender: AnyObject) {
        
        var success = false
        
        // Get data from the URL
        let attemptedUrl = NSURL(string: "http://www.weather-forecast.com/locations/" + citytextField.text!.stringByReplacingOccurrencesOfString(" ", withString: "-") + "/forecasts/latest")
        
        if let url = attemptedUrl {
        
            let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
                if let urlContent = data {
                    let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                    let websiteArray = webContent!.componentsSeparatedByString("3 Day Weather Forecast Summary:</b><span class=\"read-more-small\"><span class=\"read-more-content\"> <span class=\"phrase\">")
                
                    if websiteArray.count > 1 {
                        let weatherArray = websiteArray[1].componentsSeparatedByString("</span>")
                    
                        if weatherArray.count > 1 {
                            success = true
                            let weather = weatherArray[0].stringByReplacingOccurrencesOfString("&deg;", withString: "º")
                            dispatch_async(dispatch_get_main_queue(), { () -> Void in
                                self.resultLabel.text = weather
                            })
                        
                        }
                    }
                }
                if success == false {
                    self.resultLabel.text = "Couldn't find the weather. Try again!!!"
                }
            }
            task.resume()
        } else {
            print("THIS ISISISISI")
            self.resultLabel.text = "Couldn't find the weather. Try again!!!"
        }

    }
    
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

