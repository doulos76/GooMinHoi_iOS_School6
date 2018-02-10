//
//  ProfileView.swift
//  UIControlTest
//
//  Created by 구민회 on 2018. 2. 1..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    var profileImagView: UIImageView!
    
    init() {
        
        super.init()
        
        profileImagView = UIImageView(frame: CGRect(x: 5, y: 5, width: 40, height: 40))
        self.addSubview(profileImagView)
        
    }
    
    func setImage(named:String) {
        profileImagView?.image = UIImage(named: named)
    }
    
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
