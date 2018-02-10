//
//  ViewController.swift
//  UIView_Example
//
//  Created by 구민회 on 2018. 2. 6..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        let subView: UIView!
        
        super.viewDidLoad()
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.backgroundColor = UIColor.green
        newView.alpha = 0.5
        self.view.addSubview(newView)
        
        subView = UIView()
        subView.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        subView.backgroundColor = UIColor.orange
        subView.alpha = 0.7
        self.view.addSubview(subView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

