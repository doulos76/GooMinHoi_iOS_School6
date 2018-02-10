//
//  ViewController.swift
//  DelegateSampleTest
//
//  Created by 구민회 on 2018. 2. 6..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MyCustomViewDelegate {

    var myCustomView: MyCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        myCustomView = MyCustomView(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        myCustomView.delegate = self
        self.view.addSubview(myCustomView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didMyCustomViewSelected(_ customView:MyCustomView) {
        print("Delegate test completed")
        myCustomView.backgroundColor = UIColor.purple
    }

}

