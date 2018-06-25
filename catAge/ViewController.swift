//
//  ViewController.swift
//  catAge
//
//  Created by Adam Moore on 3/8/18.
//  Copyright © 2018 Adam Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var age: UITextField!
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        if let retrievedAge = age.text {
            if retrievedAge != "" {
                if let ageAsInt = Int(retrievedAge) {
                    let ageInCatYears = ageAsInt * 7
                    ageInCatYearsLabel.text = "You are \(ageInCatYears) years old in cat years."
                }
            } else {
                ageInCatYearsLabel.text = "You are 0 years old in cat years!"
            }
        }
    }
    
    @IBOutlet weak var ageInCatYearsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

