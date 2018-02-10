//
//  MyCustomView.swift
//  DelegateSampleTest
//
//  Created by 구민회 on 2018. 2. 6..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MyCustomView: UIView {
    
    private var button: UIButton!
    var delegate: MyCustomViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.brown
        createView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createView() {
        //button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        button = UIButton()
        button.setTitle("Touch On", for: .normal)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.setTitleColor(UIColor.brown, for: .highlighted)
//        button.backgroundColor = UIColor.yellow
        button.frame = self.bounds
        button.addTarget(self, action: #selector(buttonHandler(_:)), for: .touchUpInside)
        self.addSubview(button)
    }
    
    @objc func buttonHandler(_ sender: UIButton) {
        print("button Touched")
        delegate?.didMyCustomViewSelected(self)
    }

}

protocol MyCustomViewDelegate {
    func didMyCustomViewSelected(_ customView:MyCustomView)
}
