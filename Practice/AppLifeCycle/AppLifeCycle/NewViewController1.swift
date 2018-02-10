//
//  NewViewController1.swift
//  AppLifeCycle
//
//  Created by 구민회 on 2018. 2. 5..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class NewViewController1: UIViewController, UITextFieldDelegate {
    
    var tf: UITextField!
    var tf2: UITextField!
    var resultLb: UILabel!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //print("NewViewController1 -> viewDidLoad")
        
        createBG()
        
        tf = UITextField(frame: CGRect(x: 40, y: 130, width: 200, height: 30))
        tf.borderStyle = UITextBorderStyle.roundedRect
        tf.placeholder = "ID: write here!"
        tf.tag = 1
        tf.delegate = self
        tf.addTarget(self, action: #selector(tfChange(_:)), for: .editingChanged)
        self.view.addSubview(tf)
        
        tf2 = UITextField(frame: CGRect(x: 40, y: 230, width: 200, height: 30))
        tf2.borderStyle = UITextBorderStyle.roundedRect
        tf2.placeholder = "PW: Write here!"
        tf2.tag = 2
        tf2.delegate = self
        tf2.addTarget(self, action: #selector(tfChange(_:)), for: .valueChanged)
        self.view.addSubview(tf2)
        
        
        resultLb = UILabel(frame: CGRect(x: 40, y: 380, width: 200, height: 60))
        resultLb.textColor = .red
        resultLb.numberOfLines = 0
        resultLb.layer.borderWidth = 1
        resultLb.textAlignment = .left
        
        self.view.addSubview(resultLb)
        
        let btn = UIButton()
        btn.frame = CGRect(x: 70, y: 450, width: 80, height: 50)
        btn.addTarget(self, action: #selector(btnHandler(_:)), for: .touchUpInside)
        //btn.setBackgroundImage(UIImage(named:"logo.jpg"), for: .normal)
        //btn.setImage(UIImage(named: "logo.jpg"), for: .normal)
        btn.setTitle("Push", for: .normal)
        btn.setTitleColor(UIColor.blue, for: .normal)
        
        self.view.addSubview(btn)
    }
    
    @objc func tfChange(_ sender: UITextField) {
        print(sender.text)
    }
    
    @objc func btnHandler(_ sender: UIButton) {
        resultLb.text = "ID : "
        resultLb.text?.append(tf.text!)
        resultLb.text?.append("\n")
        resultLb.text?.append("Password : ")
        resultLb.text?.append(tf2.text!)
        tf.text = ""
        tf2.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.tag == 1 {
            self.tf2.becomeFirstResponder()
        } else if textField.tag == 2 {
            self.tf2.resignFirstResponder()
        }
        return true
    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
//        self.view.endEditing(true)
//    }
    
    func createBG() {
        let mainlabel: UILabel = UILabel(frame: CGRect(x: 0, y: 30, width: self.view.frame.size.width, height: self.view.frame.size.height * 1/6))
        mainlabel.text = "UI 실습"
        mainlabel.textColor = UIColor.orange
        mainlabel.textAlignment = NSTextAlignment.center
        mainlabel.font = UIFont.systemFont(ofSize: 30)
        //mainlabel.font = UIFont(name: "desdemona", size: 50)
        self.view.addSubview(mainlabel)
        
        //let margin: CGFloat = 50
        let wallpaperImage = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        wallpaperImage.image = UIImage(named: "wallpaperImage.jpg")
        wallpaperImage.contentMode = UIViewContentMode.scaleAspectFill
        wallpaperImage.alpha = 0.7
        self.view.addSubview(wallpaperImage)
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
