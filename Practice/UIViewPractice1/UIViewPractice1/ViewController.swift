//
//  ViewController.swift
//  UIViewPractice1
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var testView: UIView!
//    var testLb: UILabel!
//    var customFontLb: UILabel!
//    var imgView: UIImageView!
//    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let myTestView: MyCustomView = MyCustomView()
//        view.addSubview(myTestView)
        
    }
    
    @objc func btnAction(_ sender:UIButton)
    {
        
        
    }
    
    func printAllFontName()
    {
        let familyNames = UIFont.familyNames
        for fn in familyNames
        {
            print("====\(fn)=====")
            
            let fontNames = UIFont.fontNames(forFamilyName: fn)
            for fontName in fontNames
            {
                print("L>>\(fontName)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

