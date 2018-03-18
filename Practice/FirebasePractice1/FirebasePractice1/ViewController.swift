//
//  ViewController.swift
//  FirebasePractice1
//
//  Created by 구민회 on 18/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
  
  var ref: DatabaseReference!
  
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var valueTextField: UITextField!
  @IBOutlet weak var delItemTextField: UITextField!
  @IBOutlet weak var selItemTextField: UITextField!
  @IBOutlet weak var resultTextField: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    ref = Database.database().reference()
    
    ref.child("JSON").observeSingleEvent(of: .value, with: { DataSnapshot in
      
      let value = DataSnapshot.value as? NSDictionary
      let name = value?["Name"] as? String ?? ""
      
      print("Name" + name)
    })
    
    ref.observe(.childAdded, with: { DataSnapshot in
      print("Item Added")
    })
    
    ref.observe(.childRemoved, with: { DataSnapshot in
      print("Item Removed")
    })
    
    ref.observe(.childChanged, with: { DataSnapshot in
      print("Item Changed")
      dump(DataSnapshot.value)
    })
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func insertBtnAction(_ sender: UIButton) {
    //let itemsRef = ref.child(nameTextField.text?.lowercased())!)
    let itemsRef = ref.child((nameTextField.text?.lowercased())!)
    //let itemsRef = ref.child(nameTextField.text?.lowercased())!)
    itemsRef.setValue(valueTextField.text)
    
    nameTextField.text = ""
    valueTextField.text = ""
  }
  
  @IBAction func deleteBtnAction(_ sender: UIButton) {
    ref.child(delItemTextField.text!).removeValue(completionBlock: {(error, ref) in
      if error != nil {
        print("error \(String(describing: error))")
      }
      self.delItemTextField.text = ""
    })
    
  }
  
  @IBAction func selectBtnAction(_ sender: UIButton) {
    ref.child(selItemTextField.text!).observeSingleEvent(of: .value, with: {DataSnapshot in
      let value = DataSnapshot.value as? String
      let name = value
      
      print("Name : " + name!)
      self.resultTextField.text = value
    })
    
  }
  
}
























