//
//  MyCustomTableViewCell.swift
//  MyStoreTableViewTest
//
//  Created by 구민회 on 2018. 2. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MyCustomTableViewCell: UITableViewCell {
    
    @IBOutlet var itemImage: UIImageView!
    @IBOutlet var rateImage: UIImageView!
    @IBOutlet var storeTitleLabel: UILabel!
    @IBOutlet var reviewLabel: UILabel!
    @IBOutlet var ceoReplyLabel: UILabel!
    @IBOutlet var directSettlementLabel: UILabel!
    @IBOutlet var metSettlementLabel: UILabel!
    
    
    func isTrue(input: Bool) {
        if input == true {
            directSettlementLabel.backgroundColor = UIColor.cyan
            directSettlementLabel.textColor = UIColor.white
        } else {
            directSettlementLabel.backgroundColor = UIColor.lightGray
            directSettlementLabel.textColor = UIColor.white
        }
    }
    
    func ratingToImage(input: Int) -> UIImageView{
        switch input {
        case 0: rateImage.image = UIImage(named: "rate0.png")
        case 1: rateImage.image = UIImage(named: "rate1.png")
        case 2: rateImage.image = UIImage(named: "rate2.png")
        case 3: rateImage.image = UIImage(named: "rate3.png")
        case 4: rateImage.image = UIImage(named: "rate4.png")
        case 5: rateImage.image = UIImage(named: "rate5.png")
        default: print("error")
        }
        return rateImage
    }
    
    func countNumberOfReview(count: Int) {
        reviewLabel.text = "최근리뷰 " + "\(count)"
    }
    
    func countNumberOfCeoReply(count: Int) {
        ceoReplyLabel.text = "최근사장님댓글 " + "\(count)"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
