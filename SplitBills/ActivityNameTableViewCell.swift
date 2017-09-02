//
//  ActivityNameTableViewCell.swift
//  SplitBills
//
//  Created by Ayhan on 2017-09-02.
//  Copyright © 2017 Ayhan. All rights reserved.
//

import UIKit

class ActivityNameTableViewCell: UITableViewCell {

    @IBOutlet weak var nameOfTheActivity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
