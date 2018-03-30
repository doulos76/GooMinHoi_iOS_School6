//
//  LoginViewController.swift
//  iOSTest
//
//  Created by 구민회 on 29/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @IBAction private func kakaoLogin(_sender: UIButton) {
    guard let session = KOSession.shared() else { return }
    
    // Close Old Session
    session.isOpen() ? session.close() : ()
    
    session.open(completionHandler: { (error) in
      guard session.isOpen() else {
        // Open Session Failed
        print("Open Session Failed")
        return
      }
      // Login Success
      // 1번 방법
      // Session Login 후처린ㄴ KOSessionDidChange Notification 을 통해 처리
      print("Login Success")
    },  authTypes: [NSNumber(value: KOAuthType.account.rawValue)])
    
//    session.open(completionHandler: { (error) in
//      guard session.isOpen() else {
//        // Open Session Failed
//        print("Open Session Failed")
//        return
//      }
//      // Login Success
//      // 1번 방법
//      // Session Login 후처린ㄴ KOSessionDidChange Notification 을 통해 처리
//      print("Login Success")
//    }, authtypes: [NSNumber(value: KOAuthType.talk.rawValue)])

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
