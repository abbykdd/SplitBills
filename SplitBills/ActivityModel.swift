//
//  ActivityModel.swift
//  SplitBills
//
//  Created by Ayhan on 2017-09-05.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import Foundation

class ActivityModel: NSObject {
    var activityName : String
    var numberOfPeople : Int
    var billArray : [Double]
    var billNameArry : [String]
    
    init(_ activityName: String, _ numberOfPeople: Int) {
        self.activityName = activityName
        self.numberOfPeople = numberOfPeople
        self.billArray = [Double]()
        self.billNameArry = [String]()
    }
}
