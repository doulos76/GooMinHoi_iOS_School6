//
//  ViewController.swift
//  OperationProperites
//
//  Created by 구민회 on 2018. 1. 26..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var rect: Rect = Rect()
        rect.origin.x = 0.0
        rect.origin.y = 0.0

        rect.size.height = 5.0
        rect.size.width = 5.0
        
        print(rect.center)

        rect.center.x = 5.0
        rect.center.y = 5.0
        print(rect.center)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

