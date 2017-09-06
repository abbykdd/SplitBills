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

    @IBOutlet weak var numberOfPeopleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createButtonClicked(_ sender: UIButton) {
        let activityName = self.billNameTextField.text!
        guard let numPeople = Int(self.numberOfPeopleTextField.text!) else {
            print("bad numPeople")
            return
        }
        var activity = ActivityModel(activityName, numPeople)
        appManager.activitiesDict[activityName] = activity
        appManager.currentActivity = activityName
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
