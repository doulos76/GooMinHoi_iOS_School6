//
//  MyCustomView.swift
//  UIViewPractice1
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MyCustomView: UIView {
    
    private var testView: UIView!
    private var testLb: UILabel!
    private var customFontLb: UILabel!
    private var imgView: UIImageView!
    private var button: UIButton!
    
    var title: String? {
        get {
            return testLb.text
        }
        set {
            testLb.text = newValue
        }
    }
    
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createView()
    }
    
    
    
    func createView() {
        testView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 300))
        testView.backgroundColor = .orange
        self.addSubview(testView)
        
        testLb = UILabel(frame: CGRect(x: 0, y: 20, width: testView.frame.size.width, height: 20))
        testLb.font = UIFont.systemFont(ofSize: 19)
        testLb.text = "임선임님^^ Congratueration on your promotion"
        testView.addSubview(testLb)
        
        customFontLb = UILabel(frame: CGRect(x: 0, y: 40, width: testView.frame.size.width, height: 20))
        customFontLb.font = UIFont(name: "NanumBarunpen", size: 19)
        customFontLb.text = "임선임님^^ Congratueration on your promotion"
        testView.addSubview(customFontLb)
        
        //printAllFontName()
        
        imgView = UIImageView(frame: CGRect(x: 0, y: 0, width: testView.frame.size.width, height: testView.frame.size.height))
        imgView.image = UIImage(named: "logo.png")
        
        button = UIButton(type: .custom)
        button.frame = CGRect(x: testView.frame.size.width/2 - 50, y: testView.frame.size.height/2 - 50, width: 100, height: 100)
        button.setTitle("버튼", for: .normal)
        button.setTitle("누르고 있음", for: .highlighted)
        button.setTitleColor(UIColor.brown, for: .normal)
        button.setTitleColor(UIColor.purple, for: .highlighted)
        //button.addTarget(self, action: #selector(btnAction(_:)), for: .touchUpInside)
        testView.addSubview(button)
    
    }
    
    
    func addTarget(_ target: Any?, action: Selector, for controlEvents: UIControlEvents) {
           button.addTarget(target, action: action, for: controlEvents)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
