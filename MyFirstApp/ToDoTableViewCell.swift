//
//  ToDoTableViewCell.swift
//  MyFirstApp
//
//  Created by Alexander Person on 04/12/15.
//  Copyright © 2015 Alexander Person. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet weak var toDoCellLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
