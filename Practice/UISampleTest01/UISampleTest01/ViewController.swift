//
//  ViewController.swift
//  UISampleTest01
//
//  Created by 구민회 on 2018. 2. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var selectedBtn: UIButton?
    var selectedBtnList: [UIButton] = []
    var centerTextLb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView: ProfileView = ProfileView(frame: CGRect(x: 30, y: 30, width: 300, height: 80))
        myView.setTitle("안녕")
        myView.setImage(named: "sosi.jpeg")
        self.view.addSubview(myView)
        
        let myView2 = ProfileView(frame: CGRect(x: 30, y: 100, width: 300, height: 100))
        myView2.setTitle("시작이야")
        myView2.setImage(named: "logo.jpg")
        self.view.addSubview(myView2)
    }
    
    @objc func logoEventTouchUpInside(_ sender: UIButton)
    {
        if sender.isSelected == false
        {
            sender.isSelected = true
        }
        else
        {
            let index: Int = selectedBtnList.index(of: sender)!
            selectedBtnList.remove(at: index)
            sender.isSelected = false
        }
    }
    
    @objc func result(_ sender: UIButton)
    {
        var resultStr = ""
        for n in selectedBtnList
        {
            resultStr += String(n.tag)
        }
        centerTextLb.text = resultStr
    }

}

