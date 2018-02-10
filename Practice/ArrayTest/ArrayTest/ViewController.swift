//
//  ViewController.swift
//  ArrayTest
//
//  Created by 구민회 on 2018. 2. 4..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var someInts: [Int] = [Int]()
        var someInts2: Array<Int> = Array<Int>()
        var someInts3: [Int] = [1, 2, 3, 4]
        someInts = []
        print("\(someInts3[0])")
        print("\(someInts3[3])")
        
        print(someInts.count)
        print(someInts3.count)
        
        print(someInts.isEmpty)
        print(someInts3.isEmpty)
        
        someInts.append(0)
        someInts.append(3)
        print(someInts)
        someInts3.remove(at: 3)
        print(someInts3)
        someInts.append(contentsOf: [3, 4, 5])
        print(someInts)
        
        someInts.insert(7, at: 1)
        print(someInts)
        someInts.remove(at: 2)
        print(someInts)
        
//        someInts3.removeAll()
        
        let arrayisEmpty: Bool = someInts3.isEmpty
        if arrayisEmpty {
            print("array is empty")
        } else {
            print("array is not empty")
        }
        print(someInts3)
        
        someInts2.removeAll()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

