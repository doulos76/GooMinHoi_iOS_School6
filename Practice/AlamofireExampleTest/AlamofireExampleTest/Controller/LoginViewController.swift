//
//  LoginViewController.swift
//  AlamofireExampleTest
//
//  Created by 구민회 on 27/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
  @IBOutlet weak var loginIDTextField: UITextField!
  @IBOutlet weak var loginPasswordTextField: UITextField!
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
  @IBAction func loginButtonPressed(_ sender: UIButton) {
  }
  
}
