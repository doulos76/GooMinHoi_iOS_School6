//
//  ViewController.swift
//  NotiSample
//
//  Created by 구민회 on 23/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var notiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        NotificationCenter.default.addObserver(forName: Notification.Name(rawValue: "notiKey"), object: nil, queue: nil) { ("notiKey") in
//            let msg = notiKey.object as! String
//            notiLabel.text = msg
//            print("notification received, hello")
//        }
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.notiAction(_:)), name: Notification.Name(rawValue: "notiKey"), object: nil)
        
    }
    
    @objc func notiAction(_ notiKey: Notification) {
        let msg = notiKey.object as! String
        notiLabel.text = msg
        print("notification received, hello")
    }

    @IBAction func registedButton(_ sender: UIButton) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

