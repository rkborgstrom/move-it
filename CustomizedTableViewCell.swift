//
//  CustomizedTableViewCell.swift
//  Move It.
//
//  Created by Ryan Borgstrom on 9/21/18.
//  Copyright © 2018 Ryan Borgstrom. All rights reserved.
//

import UIKit

class CustomizedTableViewCell: UITableViewCell {

    @IBOutlet var usernameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
