//
//  Sample3.swift
//  MyCustomViewSample
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class Sample3: Sample2 {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func createView() {
        mySubView = UIView()
        mySubView.backgroundColor = UIColor.orange
        self.addSubview(mySubView)
        
        imageView = UIImageView()   // create UIImageView instance, named 'imageView'
        mySubView.addSubview(imageView)  // imageView is added Sample2's subView
        
        mainTitleLabel = UILabel()                              // create instnace of mainTitleLabel
        mainTitleLabel.textColor = UIColor.black                // setting text color of mainTitleLabel
        mainTitleLabel.textAlignment = NSTextAlignment.center
        mainTitleLabel.font = UIFont.systemFont(ofSize: 20)     // setting font type and size of mainTitleLabel
        mySubView.addSubview(mainTitleLabel)                         // adding mainTitleLabel as SubView
    }
    
    override func layoutView() {
        mySubView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        imageView.frame = CGRect(x: 0, y: 0, width: mySubView.frame.size.width, height: mySubView.frame.size.width)
        mainTitleLabel.frame = CGRect(x: 0, y: 0, width: mySubView.frame.size.width, height: mySubView.frame.size.width)
    }
    
    func title(mainTitle: String) {
        mainTitleLabel.text = mainTitle
    }
    
//    func setTitle(mainTitle: String) {
//        mainTitleLabel.text = mainTitle
//    }

    
}
