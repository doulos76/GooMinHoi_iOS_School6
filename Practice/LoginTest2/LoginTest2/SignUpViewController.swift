//
//  SignUpViewController.swift
//  LoginTest2
//
//  Created by 구민회 on 2018. 2. 20..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    //MARK: - Outlet Declearation
    // label Setting
    let titleLabel: UILabel!
    let idLabel: UILabel!
    let passwordLabel: UILabel!
    let reInputPasswordLabel: UILabel!
    // TextField Setting
    var idTextField: UITextField?
    var passwordTextField: UITextField?
    var reInputPasswordTextField: UITextField?
    
    // UI Setting
    func createUI() {
        // view background Setting
        self.view.backgroundColor = UIColor.white
        // Title Label Setting
        titleLabel.text = """
        Welcome
        Sign Up here
        """
        titleLabel.font = UIFont.systemFont(ofSize: 30)
        titleLabel.textColor = UIColor.black
        titleLabel.backgroundColor = UIColor.lightGray
        self.view.addSubview(titleLabel)
        
        idLabel.text = "ID"
        idLabel.textColor = UIColor.black
        idLabel.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(idLabel)
        
        passwordLabel.text = "Password"
        passwordLabel.textColor = UIColor.black
        passwordLabel.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(passwordLabel)
        
        reInputPasswordLabel.text = "Password"
        reInputPasswordLabel.textColor = UIColor.black
        reInputPasswordLabel.font = UIFont.systemFont(ofSize: 17)
        self.view.addSubview(reInputPasswordLabel)
        
        idTextField?.placeholder = "ID를 입력하세요"
        idTextField?.borderStyle = .roundedRect
        idTextField?.layer.borderWidth = 1
        idTextField?.tag = 1
        self.view.addSubview(idTextField!)

        passwordTextField?.placeholder = "비밀번호를 입력하세요"
        passwordTextField?.borderStyle = .roundedRect
        passwordTextField?.layer.borderWidth = 1
        passwordTextField?.tag = 2
        self.view.addSubview(passwordTextField!)

        reInputPasswordTextField?.placeholder = "비밀번호를 입력하세요"
        reInputPasswordTextField?.borderStyle = .roundedRect
        reInputPasswordTextField?.layer.borderWidth = 1
        reInputPasswordTextField?.tag = 3
        self.view.addSubview(reInputPasswordTextField!)

        
    }
    
    @objc func inputTextField(_ sender: UITextField) {
        switch sender.tag {
        case 1:
            
        case 2:
            
        case 3:
            
        }
    }
    
    // UI Layout Setting
    func updateLayout() {
        let offsetX: CGFloat = 100
        var offsetY: CGFloat = 150
        let frameWidth = self.view.frame.width
        let frameHight = self.view.frame.height
        
        titleLabel.frame = CGRect(x: frameWidth / 4, y: offsetY, width: frameWidth / 2, height: offsetY)
        offsetY += titleLabel.frame.height
        idLabel.frame = CGRect(x: offsetX, y: offsetY, width: frameWidth / 10, height: frameHight / 20)
        idTextField?.frame = CGRect(x: offsetX + 100, y: offsetY, width: frameWidth * 3/5, height: frameHight / 20)
        offsetY += idLabel.frame.height
        passwordLabel.frame = CGRect(x: offsetX, y: offsetY, width: frameWidth / 10, height: frameHight / 20)
        passwordTextField?.frame = CGRect(x: offsetX + 100, y: offsetY, width: frameWidth * 3/5, height: frameHight / 20)
        offsetY += passwordLabel.frame.height
        reInputPasswordLabel.frame = CGRect(x: offsetX, y: offsetY, width: frameWidth / 10, height: frameHight / 20)
        reInputPasswordTextField?.frame = CGRect(x: offsetX + 100, y: offsetY, width: frameWidth * 3/5, height: frameHight / 20)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        createUI()
        updateLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override init() {
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
