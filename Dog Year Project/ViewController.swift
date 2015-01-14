//
//  ViewController.swift
//  Dog Year Project
//
//  Created by Charles Eison on 1/14/15.
//  Copyright (c) 2015 Charles Eison. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerDogYears: UILabel!
    
    @IBOutlet weak var humanYears: UITextField!
    
    @IBOutlet weak var convertButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func pressToConvert(sender: UIButton) {
        
        let enteredHumanYears = Double((humanYears.text as NSString).doubleValue)
        let conversionFactor = 7.0
        answerDogYears.hidden = false
        answerDogYears.text = "\(enteredHumanYears * conversionFactor)" + " Dog years old!"
        answerDogYears.textColor = UIColor.blueColor()
        humanYears.text = ""
        humanYears.resignFirstResponder()
        convertButton.setTitle("Lets do it again!", forState: UIControlState.Normal)
        
        
    }
    


}

