//
//  ViewController.swift
//  UserDefaultTest
//
//  Created by 구민회 on 2018. 2. 9..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//


import UIKit

let key = "UserNameList"
class ViewController: UIViewController {
    @IBOutlet weak var mainTextFIeld: UITextField!
    @IBOutlet weak var printResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addAction(_ sender: Any) {
        if var list = UserDefaults.standard.array(forKey: key) as? [String]
        {
            
        }
        else
        {
            
        }
    }
    
    @IBAction func printAction(_ sender: Any) {
    }
}

