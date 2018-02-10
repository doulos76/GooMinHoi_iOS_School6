//
//  ViewController.swift
//  ViewTest
//
//  Created by 구민회 on 2018. 2. 4..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let btn: UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        btn.titleLabel?.text = "버튼"
        btn.setBackgroundImage(UIImage(named: "logo.jpg"), for: UIControlState.normal)
        btn.setTitleColor(.green, for: .normal)
        btn.addTarget(self, action: #selector(ViewController.btnAction(_:)), for: .touchUpInside)
        self.view.addSubview(btn)
        
        
        
        
        
    }
    
    @ func btnAction(_ sender: UIButton) {
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        
        
    }


}

