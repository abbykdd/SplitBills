//
//  InputBillsViewController.swift
//  SplitBills
//
//  Created by Ayhan on 2017-08-31.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import UIKit

class InputBillsViewController: UIViewController {
    var userIsMiddleOfTyping = false
    
    @IBOutlet weak var billDisplay: UILabel!
    
    @IBAction func beforOrAfterTac(_ sender: UIButton) {
    }

    
    @IBAction func touchDigits(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsMiddleOfTyping == true{
            let textCurrentlyDisplay = billDisplay.text!
            billDisplay.text = textCurrentlyDisplay + digit
        }else{
            billDisplay.text = digit
            userIsMiddleOfTyping = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if (self.billDisplay.text != nil){
            appManager.billArray.append(Double(self.billDisplay.text!)!)
        }else{
            
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
