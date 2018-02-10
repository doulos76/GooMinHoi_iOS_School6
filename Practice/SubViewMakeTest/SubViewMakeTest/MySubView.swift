//
//  MySubView.swift
//  SubViewMakeTest
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MySubView: UIView {
    //MARK: - Custom UI View용 Private Property 선언.
    private var backgroundImageView: UIImageView?
    private var mainTitleLabel: UILabel?
    private var subTitleLabel: UILabel?
    private var actionButton: UIButton?
    
    //MARK: - Custom UI view  용  property observer 선언
    var index: Int = 0
    {
        didSet {
            actionButton?.tag = index
        }
    }
    
    //MARK: - Custom UI View용 Computed Property 선언.
    var image: UIImage? {
        get {
            return backgroundImageView?.image
        }
        set {
            backgroundImageView?.image = newValue
        }
    }
    
    var mainTitleText: String? {
        get {
            return mainTitleLabel?.text
        }
        set {
            mainTitleLabel?.text = newValue
        }
    }
    
    var subTitleText: String? {
        get {
            return subTitleLabel?.text
        }
        set {
            subTitleLabel?.text = newValue
        }
    }
    
    //Mark: - Initializer
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
        updateLayout()
    }

    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Private Method
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
        actionButton?.addTarget(target, action: action, for: controlEvents)
    }
    
    private func createView() {
        backgroundImageView = UIImageView()
        self.addSubview(backgroundImageView!)
        
        mainTitleLabel = UILabel()
        mainTitleLabel!.font = UIFont.systemFont(ofSize: 22)
        mainTitleLabel!.textColor = UIColor.white
        mainTitleLabel!.textAlignment = NSTextAlignment.center
        self.addSubview(mainTitleLabel!)
        
        subTitleLabel = UILabel()
        subTitleLabel!.font = UIFont.systemFont(ofSize: 15)
        subTitleLabel!.textColor = UIColor.blue
        subTitleLabel!.textAlignment = NSTextAlignment.right
        self.addSubview(subTitleLabel!)
        
        actionButton = UIButton(type: UIButtonType.custom)
        self.addSubview(actionButton!)
        
    }
    
    private func updateLayout() {
        let frameWidth = self.frame.size.width
        let frameHeight = self.frame.size.height
        backgroundImageView?.frame = CGRect(x: 0, y: 0, width: frameWidth, height: frameHeight)
        mainTitleLabel?.frame = CGRect(x: 0, y: 0, width: frameWidth, height: frameHeight * 2/3)
        subTitleLabel?.frame = CGRect(x: 0, y: frameHeight * 2/3, width: frameWidth, height: frameHeight * 1/3)
        actionButton?.frame = CGRect(x: 0, y: 0, width: frameWidth, height: frameHeight)
    }
}
