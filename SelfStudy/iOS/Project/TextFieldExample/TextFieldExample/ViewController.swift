//
//  ViewController.swift
//  TextFieldExample
//
//  Created by 구민회 on 08/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
// Do any additional setup after loading , ically from a nib.
        
        let tf = UITextField()
        tf.borderStyle = UITextBorderStyle.roundedRect
        tf.clearButtonMode = .always
        //tf.borderStyle = UITextBorderStyle.bezel
        //tf.borderStyle = UITextBorderStyle.line
        //tf.borderStyle = UITextBorderStyle.none
        
        tf.frame = CGRect(x: self.view.frame.size.width * 0.1 , y: self.view.frame.size.height * 0.1 , width: self.view.frame.size.width * 4/5, height: self.view.frame.size.height * 0.1 )
        self.view.addSubview(tf)
        
        // MARK:
        
    
        tf.borderStyle = UITextBorderStyle.roundedRect
        tf.clearButtonMode = .always

        // MARK: -
        
        tf.borderStyle = UITextBorderStyle.roundedRect
        tf.clearButtonMode = .always
        // MARK:
        // MARK: -
        

        // MARK: -

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

/**********************************************
 <#code#>
**********************************************/
