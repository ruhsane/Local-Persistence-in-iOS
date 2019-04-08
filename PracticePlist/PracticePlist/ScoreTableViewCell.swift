//
//  ScoreTableViewCell.swift
//  PracticePlist
//
//  Created by Ruhsane Sawut on 4/3/19.
//  Copyright © 2019 ruhsane. All rights reserved.
//

import UIKit

class ScoreTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
