//
//  MyCustomView.swift
//  DelegateSampleTest2
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
        button = UIButton()
        button.addTarget(self, action: #selector(btnHandler(_:)), for: .touchUpInside)
        button.setTitle("Button", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = UIColor.brown
        button.frame = self.bounds
        self.addSubview(button)
    }
    
    @objc func btnHandler(_ sender: UIButton) {
        print("button touched")
        delegate?.didSelectMyCustomView(self)
    }
    

}

protocol MyCustomViewDelegate {
    func didSelectMyCustomView(_ customView: MyCustomView)
}

