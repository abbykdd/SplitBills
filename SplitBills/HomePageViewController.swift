//
//  HomePageViewController.swift
//  SplitBills
//
//  Created by Ayhan on 2017-08-19.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import UIKit

class HomePageViewController: UIViewController,UITableViewDataSource {
    @IBOutlet var activityNameTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.activityNameTableView.register(UINib.init(nibName: "ActivityNameTableViewCell",bundle:nil),forCellReuseIdentifier: "ActivityNameTableViewCell")
        self.activityNameTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 10
    
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.activityNameTableView.dequeueReusableCell(withIdentifier:"ActivityNameTableViewCell",for:indexPath) as! ActivityNameTableViewCell
        cell.nameOfTheActivity.text = appManager.activityName
        
        return cell
    }


}

