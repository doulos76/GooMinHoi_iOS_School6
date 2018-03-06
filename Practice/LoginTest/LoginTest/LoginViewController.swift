//
//  LoginViewController.swift
//  LoginTest
//
//  Created by 구민회 on 2018. 2. 20..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    //1. tf 2개 필요( ID, Password)
    var idTf: UITextField!
    var pwTf: UITextField!
    
    // 2. Button 2개 필요(login, 회원가입 버튼)
    var loginBtn: UIButton!
    var signUPBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)

        createUI()
        updateLayout()
    }

    //createUI
    private func createUI()
    {
        idTf = UITextField()
        idTf.placeholder = "아이디를 입력해주세요"
        idTf.tag = 10
        idTf.delegate = self
        idTf.borderStyle = .line
        idTf.textAlignment = .center
        idTf.keyboardType = UIKeyboardType.emailAddress
        idTf.autocapitalizationType = .none
        view.addSubview(idTf)
        
        pwTf = UITextField()
        pwTf.placeholder = "비밀번호를 입력해주세요"
        pwTf.tag = 11
        pwTf.delegate = self
        pwTf.borderStyle = .line
        pwTf.textAlignment = .center
        pwTf.isSecureTextEntry = true
        pwTf.keyboardType = UIKeyboardType.numberPad
        
        let keyboardToolbar = UIToolbar()
        keyboardToolbar.sizeToFit()
        let item = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(self.textFieldDone(_:)))
        keyboardToolbar.items = [item, doneBtn]
        
        pwTf.autocapitalizationType = .none
        view.addSubview(pwTf)

        
        loginBtn = UIButton(type: .custom)
        loginBtn.setTitle("로그인", for: .normal)
        loginBtn.setTitleColor(.black, for: .normal)
        loginBtn.setTitleColor(.gray, for: .highlighted)
        loginBtn.addTarget(self, action: #selector(self.touchUpInsideLoginBtn(_:)), for: .touchUpInside)
        view.addSubview(loginBtn)

        signUPBtn = UIButton(type: .custom)
        signUPBtn.setTitle("회원가입", for: .normal)
        signUPBtn.setTitleColor(.black, for: .normal)
        signUPBtn.setTitleColor(.gray, for: .highlighted)
        signUPBtn.addTarget(self, action: #selector(self.touchUpInsideSignUpBtn(_:)), for: .touchUpInside)
        view.addSubview(signUPBtn)
    }
    
    @objc func textFieldDone(_ sender: Any) {
        
    }
    
    // Step2 UP  frame 잡기
    private func updateLayout()
    {
        var offSetY: CGFloat = 150
        let inputFrameWidth = view.frame.size.width / 2
        var offSetX: CGFloat = view.frame.width / 2 - inputFrameWidth / 2
        
        idTf.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += idTf.frame.size.height + 10
        pwTf.frame = CGRect(x: offSetX, y: offSetY, width: inputFrameWidth, height: 50)
        offSetY += pwTf.frame.size.height + 30
        
        let btnMargin: CGFloat = 10
        loginBtn.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - 10) / 2, height: 50)
        offSetX += loginBtn.frame.size.width + btnMargin
        signUPBtn.frame = CGRect(x: offSetX, y: offSetY, width: (inputFrameWidth - 10) / 2, height: 50)
    }
    
    @objc func touchUpInsideLoginBtn(_ sender: UIButton) {
        
        if checkInputValid() {
            print("로그인")
        }
    }
    
    @objc func touchUpInsideSignUpBtn(_ sender: UIButton) {
        print("회원가입")
    }
    
    private func checkInputValid() -> Bool
    {
        // PW check
        if pwTf.text!.count  > 4 {
            return true
        } else {
            let alertVC: UIAlertController = UIAlertController(title: "문제야", message: "비밀번호가 너무 짧아 4자리 이상 입력해야돼", preferredStyle: .alert)
            let action = UIAlertAction(title: "확인", style: .cancel, handler: nil)
            alertVC.addAction(action)
            self.present(alertVC, animated: true, completion: nil)
            return false
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 10 {
            pwTf.becomeFirstResponder()
        } else {
            pwTf.resignFirstResponder()
        }
        return true
    }
}
