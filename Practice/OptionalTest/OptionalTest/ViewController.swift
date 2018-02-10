//
//  ViewController.swift
//  OptionalTest
//
//  Created by 구민회 on 2018. 1. 25..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var name: String = ""
    var oName: String?
    var o2Name: String!
    
    var label: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        name = "joo"
        oName = "joo"
        o2Name = "joo"
        // o2Name = name + oName type이 다름
        o2Name = name + o2Name!
        
        print(name, oName, o2Name)
        print(name, oName!, o2Name)
        
        label = UILabel()
        
        label?.text = "asss"
        
        name = "adsfa" + label!.text!
        
        //Optional // 관련 문서 찾아 보기 enum으로 되어 있음 control + command + mouse enter
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

