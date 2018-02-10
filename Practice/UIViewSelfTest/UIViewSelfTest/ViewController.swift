//
//  ViewController.swift
//  UIViewSelfTest
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let margin: CGFloat = 20
        
        let subView1: UIView = UIView(frame: CGRect(x: margin, y: margin, width: self.view.frame.size.width - margin * 2, height: self.view.frame.size.height - margin * 2))
        subView1.backgroundColor = UIColor.lightGray
        subView1.tag = 1
        self.view.addSubview(subView1)

        let subView2: UIView = UIView(frame: CGRect(x: margin + 20 , y: margin + 20, width: self.view.frame.size.width - margin * 2, height: self.view.frame.size.height - margin * 2))
        subView2.backgroundColor = UIColor.green
        subView2.tag = 2
        subView1.addSubview(subView2)

//        let subView3: UIView = UIView(frame: CGRect(x: margin, y: margin, width: self.view.frame.size.width - margin * 2, height: self.view.frame.size.height - margin * 2)
//        subView3.backgroundColor = UIColor.blue
//        subView3.tag = 3
//        subView2.addSubview(subView3)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

