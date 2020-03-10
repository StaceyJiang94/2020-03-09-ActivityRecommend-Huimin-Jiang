//
//  ViewController.swift
//  2020-03-09-ActivityRecommend-Huimin-Jiang
//
//  Created by Huimin Jiang on 3/9/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var temptureTxtField: UITextField!
    
    
    @IBOutlet weak var activityLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    } //end of function


    @IBAction func recommendButtonClick(_ sender: UIButton) {
        
        // Step1, we need to  know what is the temperature?
        let tempString = temptureTxtField.text!
        let tempInt = Int(tempString)
        var recommendActivity = ""
        // let temInt = Int(temptureTxtField.text!)
        
        // Step2. based on the temperature, using if-else-if statement to determine the action
        if tempInt! >= 80{
            recommendActivity = "Swimming"
        } else if tempInt! >= 60{
            recommendActivity = "Tennis"
        } else if tempInt! >= 40{
            recommendActivity = "Running"
        } else {
            recommendActivity = "Skiing"
        }
        
        // insert the action button into the action Label
        activityLabel.text = "Activity: \(recommendActivity)"
    }
    
    
} //end of class

