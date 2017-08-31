//
//  InputPeopleViewController.swift
//  SplitBills
//
//  Created by Ayhan on 2017-08-29.
//  Copyright © 2017 Ayhan. All rights reserved.
//
import UIKit

class InputPeopleViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    var userIsMiddleOfTyping = false
    
    @IBAction func touchDigits(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsMiddleOfTyping == true{
            let textCurrentlyDisplay = display.text!
            display.text = textCurrentlyDisplay + digit
        }else{
            display.text = digit
            userIsMiddleOfTyping = true
        }
    }
    var displayValue: Double{
        get {
            return Double(display.text!)!
        }
        set {
            display.text = String(newValue)
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