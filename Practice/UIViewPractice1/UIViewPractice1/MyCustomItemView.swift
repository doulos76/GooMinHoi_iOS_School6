//
//  MyCustomItemView.swift
//  UIViewPractice1
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MyCustomItemView: UIView {
    private var mainTitleLabel: UILabel!
    private var subTitleLabel: UILabel!
    private var imageView: UIImageView!
    private var myButton: UIButton!
    
    var title: String? {
        get {
            return mainTitleLabel.text
        }
        set {
            mainTitleLabel.text = newValue
        }
    }
    
    var subTitle: String? {
        get {
            return subTitleLabel.text
        }
        set {
            subTitleLabel.text = newValue
        }
    }
    
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createMyCustomItemView()
    }
    
    func createMyCustomItemView() {
        mainTitleLabel
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
