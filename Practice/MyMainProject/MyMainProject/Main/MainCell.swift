//
//  MainCell.swift
//  MyMainProject
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class MainCell: UITableViewCell {
    
    //MARK: MainCell Properties
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var statusLb: UILabel!
    
    var cellData: UserModel? {
        willSet {
            if let data = newValue {
                nameLb.text = data.nickName
                imgView.image = UIImage(named: data.profileImgUrl)
                statusLb.text = data.statusDescription
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func layoutIfNeeded() {
        super.layoutIfNeeded()
        imgView.layer.cornerRadius = imgView.frame.size.width / 2
        imgView.clipsToBounds = true
        imgView.layer.borderColor = UIColor.black.cgColor
        imgView.layer.borderWidth = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
