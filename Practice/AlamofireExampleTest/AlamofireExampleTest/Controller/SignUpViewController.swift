//
//  SignUpViewController.swift
//  AlamofireExampleTest
//
//  Created by 구민회 on 27/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit
import Alamofire

var url = "https://api.lhy.kr"

class SignUpViewController: UIViewController {
  @IBOutlet weak var idTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  @IBOutlet weak var rePasswordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    idTextField.delegate = self
    passwordTextField.delegate = self
    rePasswordTextField.delegate = self
  
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func signUpPressed(_ sender: UIButton) {
    signUp()
  }
  
  func signUp() {
    Alamofire.request(url)
      .validate()
      .responseData { (response) in
        switch response.result {
        case .success(let value):
          print(value)
        case .failure(let error):
          print(error.localizedDescription)
    }
        
        let params: Parameters = [
          "username": "",
          "password": ""
        ]
        
        let token = "myToken"
        let header = ["Authorization": "Token \(token)"]
        
        Alamofire
          .request(url, mothod: .post, parameters: params, headers: header)
        .validate()
          .responseData { () in
            
        }
        
        
    
  }
    
    
    
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

extension SignUpViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if textField.tag == 1 {
      passwordTextField.becomeFirstResponder()
    } else if textField.tag == 2 {
      rePasswordTextField.becomeFirstResponder()
    } else {
      textField.resignFirstResponder()
    }
    return true
  }
  
}
