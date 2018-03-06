//
//  LoginViewController.swift
//  LoginTest2
//
//  Created by 구민회 on 2018. 2. 20..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    //MARK: - UI Outlet Variable - TextField,Button
    // TextField 선언 - ID, Password
    var idTextField: UITextField?
    var passWordTextField: UITextField?
    
    //  Button 선언 - Log in, 회원가입
    var loginButton: UIButton?
    var signUpButton: UIButton?
    
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        createUI()
        updateLayout()
    }

    //MARK: - UI Create Method 구현
    // UI Attribute 설정
    func createUI() {
        // idTextField설정
        idTextField = UITextField()
        idTextField?.tag = 10
        idTextField?.delegate = self
        idTextField?.placeholder = "ID를 입력해 주세요"
        idTextField?.borderStyle = UITextBorderStyle.line
        idTextField?.textAlignment = NSTextAlignment.left
        idTextField?.keyboardType = UIKeyboardType.emailAddress
        idTextField?.autocapitalizationType = UITextAutocapitalizationType.none
        view.addSubview(idTextField!)
        
        // passwordTextField 설정
        passWordTextField = UITextField()
        passWordTextField?.tag = 11
        passWordTextField?.delegate = self
        passWordTextField?.placeholder = "비밀번호를 입력하세요"
        passWordTextField?.borderStyle = UITextBorderStyle.line //roundedRect
        passWordTextField?.textAlignment = NSTextAlignment.left
        passWordTextField?.keyboardType = UIKeyboardType.numbersAndPunctuation
        passWordTextField?.autocapitalizationType = .none
        passWordTextField?.isSecureTextEntry = true
        view.addSubview(passWordTextField!)
        
        // Login Button 설정
        loginButton = UIButton(type: .custom)
        loginButton?.setTitle("Log in", for: .normal)
        loginButton?.setTitleColor(UIColor.black, for: UIControlState.normal)
        loginButton?.setTitleColor(UIColor.gray, for: UIControlState.highlighted)
        loginButton?.layer.borderWidth = 1.0
        loginButton?.layer.cornerRadius = 10
        loginButton?.addTarget(self, action: #selector(touchUpInsideLoginButton(_:)), for: .touchUpInside)
        view.addSubview(loginButton!)
        
        // Sign Up Button Attribute Setting
        signUpButton = UIButton(type: .custom)
        signUpButton?.setTitle("Sign Up", for: .normal)
        signUpButton?.setTitleColor(.black, for: .normal)
        signUpButton?.setTitleColor(.gray, for: .highlighted)
        signUpButton?.addTarget(self, action: #selector(touchUpInsideSignUpButton(_:)), for: .touchUpInside)
        view.addSubview(signUpButton!)
    }
    
    // UI frame 설정
    func updateLayout() {
        var offSetY: CGFloat = 150
        let inputFrameWidth = view.frame.size.width / 2
        let inputFrameHight: CGFloat = 50
        var offSetX: CGFloat = view.frame.width / 2 - inputFrameWidth / 2
        
        idTextField?.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: inputFrameHight)
        offSetY += idTextField!.frame.size.height + 10
        passWordTextField?.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: inputFrameHight)
        offSetY += passWordTextField!.frame.size.height + 30
        
        let buttonMargin: CGFloat = 10
        loginButton?.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - 10) / 2, height: inputFrameHight)
        offSetX += loginButton!.frame.size.width + buttonMargin
        signUpButton?.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - 10) / 2, height: inputFrameHight)
    }
    
    
    //MARK: - EventHanding Method 구현
    // Event Handling Method
    @objc func touchUpInsideLoginButton(_ sender: UIButton) {
        if checkInputValid() {
            print("Login button touched, Login")
        }
    }
    // Event Handling Method
    @objc func touchUpInsideSignUpButton(_ sender: UIButton) {
        print("Sign up button touched")
//        let storyboard = UIStoryboard(name: "signedUpPage", bundle: nil)
//        let signedUpVC = storyboard.instantiateInitialViewController()
        let signedUpVC = SignUpViewController()
        self.present(signedUpVC, animated: true, completion: nil)
    }
    
    private func checkInputValid() -> Bool {
        // Password check
        if passWordTextField!.text!.count > 4 {
            return true
        } else {
            let alertVC: UIAlertController = UIAlertController(title: "Password Issue", message: "Password를 4자리 이상 입력해 주세요.", preferredStyle: .alert)
            let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            alertVC.addAction(action)
            self.present(alertVC, animated: true, completion: nil)
            return false
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 10 {
            passWordTextField?.becomeFirstResponder()
        } else {
            passWordTextField?.resignFirstResponder()
        }
        return true
    }

}
