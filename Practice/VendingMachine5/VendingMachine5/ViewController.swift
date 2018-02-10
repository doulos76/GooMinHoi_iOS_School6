//
//  ViewController.swift
//  VendingMachine5
//
//  Created by 구민회 on 2018. 2. 10..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sum = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var count = 0
        for row in 5...10 {
            count += 1
            self.sum += row
        }
        
        print("총 합은 \(self.sum), \(count)회 실행되었습니다."	)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

