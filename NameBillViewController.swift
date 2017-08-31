//
//  NameBillViewController.swift
//  SplitBills
//
//  Created by Ayhan on 2017-08-31.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import UIKit

class NameBillViewController: UIViewController {

    @IBOutlet weak var billNameTextField: UITextField!

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
        
        let billName = self.billNameTextField.text!
        print(billName)
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
