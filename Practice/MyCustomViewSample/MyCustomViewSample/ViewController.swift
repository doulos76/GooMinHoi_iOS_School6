//
//  ViewController.swift
//  MyCustomViewSample
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        let sample1 = Sample1(frame: CGRect(x: 25, y: 50, width: 300, height: 0))//(frame: CGRect(x: 25, y: 50, width: 300, height: 100000))
//        self.view.addSubview(sample1)
//        sample1.title("여기가 제목", subTitle: "부제목 적기")
//        //sample1.title("여기가 제목", _subTitle: "부제목 적기")
//        sample1.image(named: "squareImage")
        
        let sample2 = Sample2(frame: CGRect(x: 25, y: 50, width: 300, height: 1500))
        self.view.addSubview(sample2)
        sample2.title(mainTitle: "주요 제목", subTitle: "소 주제")
        sample2.image(named: "squareImage")
        
        let sample3 = Sample3(frame: CGRect(x: 25, y: 250, width: 300, height: 1500))
        self.view.addSubview(sample3)
        sample3.title(mainTitle: "제목 적기")
        sample3.image(named: "squareImage")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
