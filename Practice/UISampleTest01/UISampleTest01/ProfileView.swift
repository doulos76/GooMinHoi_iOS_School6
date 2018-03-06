//
//  ProfileView.swift
//  UISampleTest01
//
//  Created by 구민회 on 2018. 2. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    var profileImgView: UIImageView!
    var titleLB: UILabel!
    var subTitleLB: UILabel!
    
    var btn: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        profileImgView = UIImageView(frame: CGRect(x: 5, y: 5, width: self.frame.size.height - 10, height: self.frame.size.height - 10))
        self.addSubview(profileImgView)
        
        titleLB = UILabel(frame: CGRect(x: profileImgView.frame.size.width + 5 + 5, y: profileImgView.frame.origin.y, width: self.frame.size.width - self.frame.size.height - 10 - 10, height: CGFloat(30)))
        titleLB.font = UIFont.systemFont(ofSize: 16)
        titleLB.textColor = UIColor.black
        self.addSubview(titleLB)
        
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.darkGray.cgColor
        self.layer.cornerRadius = 20
        
        btn = UIButton()
        btn.frame = self.bounds
        self.addSubview(btn)
    }
    
    open func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents)
    {
        btn.addTarget(target, action: action, for: controlEvents)
    }
    
    func setImage(named: String)
    {
        profileImgView.image = UIImage(named: named)
    }
    
    func setTitle(_ title: String) {
        titleLB.text = title
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
