//
//  MyTableViewCell.swift
//  TableVIewTest03
//
//  Created by 구민회 on 07/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLb: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleLb.textColor = UIColor.blue

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
