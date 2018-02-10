//
//  ViewController.swift
//  CalculatorForWingTestExample
//
//  Created by 구민회 on 2018. 2. 7..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var displayView: UILabel!
    var keyPadView: UIView!
    var etcView: UIView!
    var operView: UIView!
    var numberPadView: UIView!
    
    var etcBtnList: [UIButton]!
    var operBtnList: [UIButton]!
    var numberBtnList: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        updateLayout()
    }
    
    private func createUI()
    {
        displayView = UILabel()
        displayView.text = "0"
        displayView.textAlignment = NSTextAlignment.right
        displayView.font = UIFont.systemFont(ofSize: 100)
        displayView.textColor = UIColor.white
        view.addSubview(displayView)
        
        keyPadView = UIView()
        view.addSubview(keyPadView)
        
        etcView = UIView()
        keyPadView.addSubview(etcView)
        operView = UIView()
        keyPadView.addSubview(operView)
        numberPadView = UIView()
        keyPadView.addSubview(numberPadView)
        
        displayView.backgroundColor = .darkGray
        keyPadView.backgroundColor = .black
        
        etcBtnList = makeBtn(count: 3)
          
        
    }
    
    private func updateLayout()
    {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

