//
//  MakeSubView.swift
//  MakeViewTest
//
//  Created by 구민회 on 2018. 2. 3..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MakeSubView: UIView {
    
    // MARK: - property
    var mySubView: UIView!
    var myImageView: UIImageView!
    var mySubViewMainTitleLabel: UILabel!
    var mySubViewSubTitleLabel: UILabel!
    var myButton: UIButton!
    
    // MARK: - init() method
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - method
    func makeSubView() {
        mySubView.backgroundColor = UIColor.clear
        self.addSubview(mySubView)
        
        myImageView.image  = UIImage(named: "logo.jpg")
        mySubView.addSubview(myImageView)
        
        mySubViewMainTitleLabel.text = "Main Title"
        mySubView.addSubview(mySubViewMainTitleLabel)
        
        mySubViewSubTitleLabel.text = "Sub Title"
        mySubView.addSubview(mySubViewSubTitleLabel)
        //myButton.
    }
    
    
}
