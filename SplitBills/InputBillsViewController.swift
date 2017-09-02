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
    

    @IBOutlet weak var nameOfBill: UITextField!
    @IBOutlet weak var amountOfBill: UITextField!
    
    
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
        appManager.billArray.append(Double(self.amountOfBill.text!)!)
        appManager.billNameAry.append(self.nameOfBill.text!)
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


