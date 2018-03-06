//
//  NextViewController.swift
//  NotiSample
//
//  Created by 구민회 on 23/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var inputDataTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: "notiKey"), object: nil)

        // Do any additional setup after loading the view.
    }
    
    func postNoti() {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "ney"), object: nil)
    }
    
    @IBAction func saveDataButton(_ sender: UIButton) {
        
        var message = inputDataTextField.text
        Notification.Name(message!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
