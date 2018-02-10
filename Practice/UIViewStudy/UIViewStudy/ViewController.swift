//
//  ViewController.swift
//  UIViewStudy
//
//  Created by 구민회 on 2018. 2. 3..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // UIView Example
        
        //객체 생성
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        
        // 배경 색변경
        newView.backgroundColor = UIColor.gray

        //뷰 투명도 50%
        newView.alpha = 0.5
        
        // 뷰 추가
        self.view.addSubview(newView)
        
        let topSideView = UIView(frame: CGRect(x: 15, y: 15, width: 345, height: 100))
        topSideView.backgroundColor = UIColor.blue
        self.view.addSubview(topSideView)
        
        let bottomSideView = UIView(frame: CGRect(x: 15, y: self.view.frame.size.height - 15 - 100, width: 345, height: 100))
        bottomSideView.backgroundColor = UIColor.blue
        self.view.addSubview(bottomSideView)
        let margin: CGFloat = 20
        let autoScaleView: UIView = UIView(frame: CGRect(x: margin, y: margin, width: self.view.frame.size.width - 2 * margin, height: 30))
        autoScaleView.backgroundColor = UIColor.brown
        self.view.addSubview(autoScaleView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

