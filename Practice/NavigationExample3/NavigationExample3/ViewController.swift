//
//  ViewController.swift
//  NavigationExample3
//
//  Created by 구민회 on 2018. 2. 9..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var moveIntoNextWindow: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //left
        let leftItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.camera, target: self, action: #selector(leftAction(_:)))
        leftItem.tintColor = .red   //tintColor : 전체적인 앱의 톤, sub view 들 모두 적용됨.
        
        
        self.navigationItem.leftBarButtonItem = leftItem
        
        
        //title
        self.navigationItem.title = "메인 페이지"
        //right
        self.navigationItem.
        
//        self.title = "안녕하세요"
//        let item: UIBarButtonItem = UIBarButtonItem()
        
        

        
//        let icon = UIImageView(image: UIImage(named: ""))
//        icon.frame = CGRect(x: 10, y: 100, width: 40, height: 40)
//        let item: UIBarButtonItem =
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: icon)
//        self.navigationItem.leftBarButtonItem = item
        
        
//        moveIntoNextWindow = UIButton(type: UIButtonType.roundedRect)
//        moveIntoNextWindow?.frame = CGRect(x: self.view.frame.size.width * 0.6, y: self.view.frame.size.height * 0.2, width: 150, height: 40)
//        moveIntoNextWindow?.setTitle("Go to Next", for: .normal)
//        moveIntoNextWindow?.backgroundColor = UIColor.orange
//        moveIntoNextWindow?.addTarget(self, action: #selector(gotoNextWindow(_:)), for: .touchUpInside)
//        self.view.addSubview(moveIntoNextWindow!)

        
    }
    
    @objc func leftAction(_ item: UIBarButtonItem)
    {
        
    }
    
//    @objc func gotoNextWindow(_ sender: UIButton) {
//        self.present(NextViewController, animated: true, completion: nil)
//
//
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

