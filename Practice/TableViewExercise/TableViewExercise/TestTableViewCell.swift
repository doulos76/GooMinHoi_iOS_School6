//
//  TestTableViewCell.swift
//  TableViewExercise
//
//  Created by 구민회 on 06/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleLabel = UILabel()
        titleLabel?.textColor = UIColor.red
        titleLabel?.text = "cell"
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
