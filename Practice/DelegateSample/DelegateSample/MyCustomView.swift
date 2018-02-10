//
//  MyCustomView.swift
//  DelegateSample
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
    

    private func createView()
    {
        button = UIButton()
        button.addTarget(self, action: #selector(btnHandler(_sender:)), for: .touchUpInside)
        button.setTitle("hii", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.frame = self.bounds
        self.addSubview(button)
    }
    
    @objc func btnHandler(_sender: UIButton) {
//        print("button touched")
        delegate?.didSelectedMyCustomView(self)
    }


}

protocol MyCustomViewDelegate {
    func didSelectedMyCustomView(_ customView: MyCustomView)
}
