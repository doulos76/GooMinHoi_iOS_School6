//
//  ViewController.swift
//  DelegateSampleTest2
//
//  Created by 구민회 on 2018. 2. 6..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyCustomViewDelegate, UIScrollViewDelegate {

    var customView: MyCustomView!
    override func viewDidLoad() {
        super.viewDidLoad()
        customView = MyCustomView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        customView.delegate = self
        self.view.addSubview(customView)
        
        let myLabel: UILabel  = UILabel(frame: CGRect(x: 300, y: 300, width: 100, height: 200))
        //myLabel.text = String
        self.view.addSubview(myLabel)
        
        let sc: UIScrollView = UIScrollView()
        sc.contentSize = CGSize(width: self.view.frame.size.width * 2, height: self.view.frame.size.height)
        sc.frame = self.view.frame
        self.view.addSubview(sc)
        print((sc.contentOffset.x))
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func didSelectMyCustomView(_ customView: MyCustomView)
    {
        print("delegate")
        customView.backgroundColor = UIColor.orange
    }


}

