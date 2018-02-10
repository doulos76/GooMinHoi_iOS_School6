//
//  NewViewController.swift
//  AppLifeCycleTest
//
//  Created by 구민회 on 2018. 2. 5..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class NewViewController: UIViewController,UITextFieldDelegate {

    
    var mainTextField: UITextField!
    var subTextField: UITextField!
    var button: UIButton!
    var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpBackGround()
        mainTextField = UITextField(frame: CGRect(x: 20, y: self.view.frame.size.height * 2 / 10, width: self.view.frame.size.width - 40, height: self.view.frame.size.height * 1/15))
        mainTextField.placeholder = "ID"
        mainTextField.borderStyle = .roundedRect
        mainTextField.alpha = 0.7
        mainTextField.delegate = self
        mainTextField.tag = 1
        mainTextField.addTarget(self, action: #selector(textFieldChanged(_:)), for: .editingChanged)
        self.view.addSubview(mainTextField)
        
        subTextField = UITextField(frame: CGRect(x: 20,  y: self.view.frame.size.height * 3 / 10, width: self.view.frame.size.width - 40, height: self.view.frame.size.height * 1/15))
        subTextField.placeholder = "Password"
        subTextField.borderStyle = .roundedRect
        subTextField.alpha = 0.7
        subTextField.delegate = self
        subTextField.tag = 2
        subTextField.addTarget(self, action: #selector(textFieldChanged(_:)), for: .editingChanged)
        self.view.addSubview(subTextField)
        
        button = UIButton(frame: CGRect(x: self.view.frame.size.width * 2/7, y: self.view.frame.size.height * 3/7, width: self.view.frame.size.width * 3/7, height: self.view.frame.size.height * 1/15))
        button.setTitle("<<Push>>", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.backgroundColor = UIColor.lightGray
        button.alpha = 0.5
        button.addTarget(self, action: #selector(pushButton(_:)), for: .touchUpInside)
        self.view.addSubview(button)
        
        resultLabel = UILabel(frame: CGRect(x: 20, y: self.view.frame.size.height * 4/7, width: self.view.frame.size.width - 40, height: self.view.frame.size.height * 2/15))
        resultLabel.textAlignment = NSTextAlignment.center
        resultLabel.backgroundColor = .darkGray
        resultLabel.alpha = 0.7
        resultLabel.numberOfLines = 0
        self.view.addSubview(resultLabel)
        
        resultLabel.layoutSubviews()
        
    }
    
    @objc func textFieldChanged(_ sender:UITextField) {
        print(sender.text)
    }
    
    
    @objc func pushButton(_ sender: UIButton) {
        //print("button pressed")     //
        //resultLabel.text = mainTextField.text
        resultLabel.text = "ID : "
        resultLabel.text?.append(mainTextField.text!)
        resultLabel.text?.append("\n")
        resultLabel.text?.append("Password : ")
        resultLabel.text?.append(subTextField.text!)
        
        mainTextField.text = ""
        subTextField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            self.subTextField.becomeFirstResponder()
        } else if textField.tag == 2{
            self.subTextField.resignFirstResponder()
        }
        return true
    }

    func setUpBackGround() {
        let margin: CGFloat = 20
        
        let wallpaperImage: UIImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.bounds.size.width, height: self.view.bounds.size.height))
        wallpaperImage.image = UIImage(named: "wallpaperImage.jpg")
        self.view.addSubview(wallpaperImage)
        
        let titleLabel: UILabel = UILabel(frame: CGRect(x: 0, y: margin, width: self.view.frame.size.width, height: self.view.frame.size.height * 1/8))
        titleLabel.text = "UI textField Test"
        titleLabel.textColor = UIColor.orange
        titleLabel.font = UIFont.systemFont(ofSize: 30)
        titleLabel.textAlignment = NSTextAlignment.center
        self.view.addSubview(titleLabel)
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
