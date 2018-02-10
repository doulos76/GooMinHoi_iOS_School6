//
//  ViewController.swift
//  UserDefalutSample
//
//  Created by 구민회 on 2018. 2. 9..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

let key = "UserNameList"

class ViewController: UIViewController {

    @IBOutlet weak var mainTextField: UITextField!

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
            list.append(mainTextField!.text!)
            UserDefaults.standard.set(list, forKey: key)
        } else {
//            if let mainTextField
            let newNameList = [mainTextField!.text!]
            UserDefaults.standard.set(newNameList, forKey: key)
        }
    }
    
    @IBAction func printAction(_ sender: Any) {
        if let list = UserDefaults.standard.array(forKey: key) as? [String]
        {
            for name in list
            {
                if mainTextField.text == name
                {
                    print("찾았다.")
                }
            }
        }
    }
}

