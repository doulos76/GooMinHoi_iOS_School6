//
//  ViewController.swift
//  AutolayoutTest05
//
//  Created by dave on 23/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  @IBOutlet weak var previewImageView: UIImageView!
  @IBOutlet weak var contentsTextView: UITextView!
  @IBOutlet weak var heightConstraint: NSLayoutConstraint!
  
  
  var hasImage: Bool = false
  
  @IBAction func addImage(_ sender: UIButton) {
    let picker = UIImagePickerController()
    picker.delegate = self
    picker.allowsEditing = true
    self.present(picker, animated: false)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage
    previewImageView?.image = pickedImage!
    picker.dismiss(animated: false)
    hasImage = true
    changeLayout(input: hasImage)
  }
  
  func changeLayout(input: Bool) {
    heightConstraint.constant = hasImage ? 300 : 0
    
    //self.contentsTextView.layoutIfNeeded()
  }
  
}

