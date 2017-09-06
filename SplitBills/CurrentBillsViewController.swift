//
//  CurrentBillsViewController.swift
//  SplitBills
//
//  Created by Ayhan on 2017-08-31.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import UIKit

class CurrentBillsViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var billsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.billsTableView.register(UINib.init(nibName: "BillTableViewCell", bundle: nil), forCellReuseIdentifier: "BillTableViewCell")
        self.billsTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return (appManager.activitiesDict[appManager.currentActivity]?.billArray.count)!
//        return appManager.billArray.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = self.billsTableView.dequeueReusableCell(withIdentifier: "BillTableViewCell", for: indexPath) as! BillTableViewCell
        //bill = appManager.activitiesDict[appManager.currentActivity]?.billArray[indexPath.row]
        cell.priceOfTheBill.text = String(describing: appManager.activitiesDict[appManager.currentActivity]!.billArray[indexPath.row])
        cell.nameOfTheBill.text = appManager.activitiesDict[appManager.currentActivity]?.billNameArry[indexPath.row]
        
        return cell
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
