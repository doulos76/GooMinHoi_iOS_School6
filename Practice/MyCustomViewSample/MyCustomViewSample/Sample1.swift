//
//  Sample1.swift
//  MyCustomViewSample
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class Sample1: UIView {
    
    var imageView: UIImageView!
    var titleLabel: UILabel!
    var subTitleLabel: UILabel!
    
    override init(frame: CGRect) {
        //let newFrame = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 110)
        super.init(frame: frame)
        createView()
        updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func createView()
    {
        imageView = UIImageView()
        self.addSubview(imageView)
        
        titleLabel = UILabel()
        titleLabel.font = UIFont.systemFont(ofSize: 20)
        titleLabel.textColor = UIColor.black
        self.addSubview(titleLabel)
        
        subTitleLabel = UILabel()
        subTitleLabel.font = UIFont.systemFont(ofSize: 15)
        subTitleLabel.textColor = UIColor.gray
        self.addSubview(subTitleLabel)
        
    }
    
    func updateLayout() {
        let margin: CGFloat = 5
        var offsetX: CGFloat = margin
        imageView.frame = CGRect(x: margin, y: margin, width: 100, height: 100)
        
        offsetX += imageView.frame.size.width + margin
        
        titleLabel.frame = CGRect(x: offsetX, y: margin, width: self.frame.size.width - offsetX, height: 45)
        subTitleLabel.frame = CGRect(x: offsetX, y: imageView.frame.size.height - 45, width: self.frame.size.width - offsetX, height: 45)
        
    }

    
    
    func image(named: String)
    {
        imageView.image = UIImage(named: named)
    }
    
    func title(_ title: String, subTitle: String) {
        titleLabel.text = title
        subTitleLabel.text = subTitle
    }
}
