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
    
    @IBOutlet weak var secondConvertButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertButtonPressed(sender: UIButton) {
    
    
        
        let enteredHumanYears = Double((humanYears.text as NSString).doubleValue)
        let conversionFactor = 7.0
        answerDogYears.hidden = false
        answerDogYears.text = "\(enteredHumanYears * conversionFactor)" + " Commonly believed dog years old!"
        answerDogYears.textColor = UIColor.redColor()
        humanYears.text = ""
        humanYears.resignFirstResponder()
        convertButton.setTitle("Now try actual dog years", forState: UIControlState.Normal)
        secondConvertButton.setTitle("Convert To Actual Dog Years", forState: UIControlState.Normal)
    }
    
    @IBAction func secondConvertButtonPressed(sender: UIButton) {
        let enteredHumanYears = Double((humanYears.text as NSString).doubleValue)
        let firstConversionFactor = 10.5
        let secondConversionFactor:Double = 4
        
        answerDogYears.hidden = false
        answerDogYears.textColor = UIColor.purpleColor()
        
        if enteredHumanYears > 2 {
            answerDogYears.text = "\((enteredHumanYears - 2) * secondConversionFactor + 2 * firstConversionFactor)" + " Actual dog years old!"
        }
        else if enteredHumanYears == 0 {
            answerDogYears.text = "That is not a valid input"
        }
        else {
            answerDogYears.text = "\(enteredHumanYears * firstConversionFactor)" + " Actual dog years old!"
        }
        
        humanYears.text = ""
        humanYears.resignFirstResponder()
        secondConvertButton.setTitle("Let's do it again!", forState: UIControlState.Normal)
        convertButton.setTitle("Convert To Dog Years", forState: UIControlState.Normal)
    }
    


}

