//
//  ViewController.swift
//  RandomNumber
//
//  Created by 구민회 on 2018. 2. 5..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //var num: Int = Int(arc4random_uniform(UInt32(10)))
        
//        func randomNumber(inputNum: Int) -> Int
//        {
//            var randomNum: Int = 0
//            for _ in 0...inputNum {
//                randomNum = Int(arc4random_uniform(UInt32(inputNum)))
//                print(randomNum)
//            }
//            return randomNum
//        }
//        num = randomNumber(inputNum: num)
        for index in 0...100 {
            var num: Int = Int(arc4random_uniform(UInt32(index)))
            print(num)
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

