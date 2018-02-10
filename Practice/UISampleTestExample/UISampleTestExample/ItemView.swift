//
//  ItemView.swift
//  UISampleTestExample
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ItemView: UIView {
    
    private var backgroundImage: UIImageView?
    private var titleLabel: UILabel?
    private var descriptionLabel: UILabel?
    private var actionBtn: UIButton?
    
    var index: Int = 0
    {
        didSet {
            actionBtn?.tag = index
        }
    }
    
    var image: UIImage?
    {
        get {
            return backgroundImage?.image
        }
        set {
            backgroundImage?.image = newValue
        }
    }
    
    var title: String?
    {
        get {
            return titleLabel?.text
        }
        set {
            titleLabel?.text = newValue
        }
    }
    
    var descriptionText: String?
    {
        get {
            return descriptionLabel?.text
        }
        set {
            descriptionLabel?.text = newValue
        }
    }
    //MARK : - Init Method
    /// 초기화
    /// width / height중 큰 크기로 정사각형 만듦
    /// - Parameter frame: 위치와 크기 받기
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
        updateLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //MARK : - Private Method
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        actionBtn?.addTarget(target, action: action, for: controlEvents)
        
    }

    
    private func createView()
    {
        backgroundImage = UIImageView()
        self.addSubview(backgroundImage!)
        
        titleLabel = UILabel()
        titleLabel!.font = UIFont.systemFont(ofSize: 22)
        titleLabel!.textColor = UIColor.white
        titleLabel!.textAlignment = NSTextAlignment.center
        self.addSubview(titleLabel!)
        
        descriptionLabel = UILabel()
        descriptionLabel!.font = UIFont.systemFont(ofSize: 13)
        descriptionLabel!.textColor = .white
        descriptionLabel!.textAlignment = .right
        self.addSubview(descriptionLabel!)
        
        actionBtn = UIButton(type: UIButtonType.custom)
        self.addSubview(actionBtn!)
    }
    
    private func updateLayout() {
        backgroundImage?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height)
        titleLabel?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height * 2/3)
        descriptionLabel?.frame = CGRect(x: 0, y: self.frame.size.height * 2/3, width: self.frame.size.width, height: self.frame.size.height / 3)
        actionBtn?.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height / 3)
    }


}

































