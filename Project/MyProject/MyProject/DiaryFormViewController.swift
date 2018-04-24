//
//  DiaryFormViewController.swift
//  MyProject
//
//  Created by dave on 16/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class DiaryFormViewController: UIViewController {
  
  @IBOutlet weak var todayDate: UILabel!
  @IBOutlet weak var barImageView: UIImageView!
  @IBOutlet weak var photoView: UICollectionView!
  @IBOutlet weak var diaryTextView: UITextView!
  @IBOutlet weak var previewImageView: UIImageView!
  
  var currentTime: String = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    
    let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
    let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
    let timeStampLabel = UIBarButtonItem(title: "Time", style: UIBarButtonItemStyle.done, target: self, action: #selector(addCurrentTimeLabel))
    let addImageButton = UIBarButtonItem(title: "Photo", style: UIBarButtonItemStyle.done, target: self, action: #selector(addImage(_:)))
    
    toolBar.setItems([timeStampLabel,flexibleSpace, addImageButton, flexibleSpace, doneButton], animated: false)
    
    displayCurrentDate()
    displayCurrentTime()
    
    
    // Do any additional setup after loading the view.
  }
  
  
  @objc func doneClicked() {
    view.endEditing(true)
  }
  
  @objc func addCurrentTimeLabel() {
    let timeText: String = getCurrentTime()
    diaryTextView.text.append(timeText)
  }
  
  func displayCurrentDate() {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "EEEE / MMMM dd / yyyy"
    let stringDate = dateFormatter.string(from: date)
    todayDate.text = stringDate
  }
  
  func displayCurrentTime() {
    let time = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.locale = Locale(identifier: "en_US_POSIX")
    timeFormatter.dateFormat = "h:mm a"
    timeFormatter.amSymbol = "am"
    timeFormatter.pmSymbol = "pm"
    let stringTime = timeFormatter.string(from: time)
    currentTime = stringTime
  }
}

  


extension DiaryFormViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  @objc func addImage(_ sender: Any) {
    let picker = UIImagePickerController()
    
    picker.delegate = self
    picker.allowsEditing = true
    present(picker, animated: false, completion: nil)
  }
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    self.previewImageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
    picker.dismiss(animated: false)
  }
}
