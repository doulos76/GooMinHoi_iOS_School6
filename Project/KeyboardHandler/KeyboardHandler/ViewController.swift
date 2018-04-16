//
//  ViewController.swift
//  KeyboardHandler
//
//  Created by dave on 11/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: - Property
  @IBOutlet weak var currentDate: UILabel!
  @IBOutlet weak var currentTime: UILabel!
  @IBOutlet weak var myDiaryText: UITextView!
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var phoneNumberTextField: UITextField!
  @IBOutlet weak var imageCollection: UICollectionView!
  @IBOutlet weak var previewImageView: UIImageView!
  
  var imageArray: [UIImageView]?
  var todayImage: UIImageView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    
    let flexibleSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.flexibleSpace, target: nil, action: nil)
    let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.done, target: self, action: #selector(self.doneClicked))
    let timeStampLabel = UIBarButtonItem(title: "Time", style: UIBarButtonItemStyle.done, target: self, action: #selector(addCurrentTimeLabel))
    let addImageButton = UIBarButtonItem(title: "Photo", style: UIBarButtonItemStyle.done, target: self, action: #selector(addImage(_:)))
    
    toolBar.setItems([timeStampLabel,flexibleSpace, addImageButton, flexibleSpace, doneButton], animated: false)
    
    nameTextField.inputAccessoryView = toolBar
    phoneNumberTextField.inputAccessoryView = toolBar
    myDiaryText.inputAccessoryView = toolBar
    
    displayCurrentDate()
    displayCurrentTime()
    
  }
  
  @objc func doneClicked() {
    view.endEditing(true)
  }
  
  @objc func addCurrentTimeLabel() {
    let timeText: String = getCurrentTime()
    myDiaryText.text.append(timeText)
  }
  
  func displayCurrentDate() {
    let date = Date()
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    let stringDate = dateFormatter.string(from: date)
    currentDate.text = stringDate
  }
  
  func displayCurrentTime() {
    let time = Date()
    let timeFormatter = DateFormatter()
    timeFormatter.locale = Locale(identifier: "en_US_POSIX")
    timeFormatter.dateFormat = "h:mm a"
    timeFormatter.amSymbol = "am"
    timeFormatter.pmSymbol = "pm"
    let stringTime = timeFormatter.string(from: time)
    currentTime.text = stringTime
  }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  @objc func addImage(_ sender: Any) {
    let picker = UIImagePickerController()
    
    picker.delegate = self
    picker.allowsEditing = true
    doneClicked()
    present(picker, animated: false, completion: nil)
  }
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    self.previewImageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
    picker.dismiss(animated: false)
  }
}

//extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
//  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//    if let imageCount: Int = imageArray?.count {
//      return imageCount
//    }
//    return 0
//  }
//
//  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyPhotoCollectionViewCell", for: indexPath) as! MyPhotoCollectionViewCell
//    return cell
//  }
//}
