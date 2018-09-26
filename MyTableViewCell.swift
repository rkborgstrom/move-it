//
//  MyTableViewCell.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/25/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var moving_username: UILabel!
    @IBOutlet weak var moving_date: UILabel!
    @IBOutlet weak var moving_location: UILabel!
    @IBOutlet weak var moving_objects: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
