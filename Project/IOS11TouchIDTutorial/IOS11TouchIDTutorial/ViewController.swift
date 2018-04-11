//
//  ViewController.swift
//  IOS11TouchIDTutorial
//
//  Created by dave on 11/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import LocalAuthentication
import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  @IBAction func authWithTouchID(_ sender: Any) {
    // 1. Get the authentication context from the Local Authentication framework
    let context = LAContext()
    var error: NSError?
    
    // 2. The canEvaluatePolicy method checks if Touch ID is available on the device
    // check if Touch ID is available
    if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
      // 3. The policy is evaluate where the third parameter is a completion handler block.
      let reason = "Authenticate with Touch ID"
      context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason, reply:
      {(success, error) in
        // 4. An Alert message is shown wether the Touch ID authentication succeeded or not.
        if success {
          self.showAlertController("Touch ID Authentication Succeeded")
        } else {
          self.showAlertController("Touch ID Authentication Failed")
        }
      })
    }
    // 5. IF Touch id is not available an Alert message is shown.
    else {
      showAlertController("Touch ID not available")
    }
  }
  
  func showAlertController(_ message: String) {
    let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
    alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alertController, animated: true, completion: nil)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

