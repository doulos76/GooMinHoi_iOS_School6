//
//  DiaryViewController.swift
//  DayGramTest
//
//  Created by dave on 18/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class DiaryViewController: UIViewController {
  @IBOutlet weak var dateLabel: UILabel!
  @IBOutlet weak var diaryTextView: UITextView!
  @IBOutlet weak var dailyPhotoImageView: UIImageView!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    makeKeyboardToolBar()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    dateLabel.text = getCurrentDate()
  }

  @IBAction func dismiss(_ sender: Any) {
    save()
    self.presentingViewController?.dismiss(animated: true, completion: nil)
  }
  
  func save() {
    let data = DiaryData()
    
    data.diaryContents = self.diaryTextView.text
    data.image = self.dailyPhotoImageView.image
    data.registedDate = Date()
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    appDelegate.diaryList.append(data)
  }
  
}

extension DiaryViewController {
  // Keyboard ToolBar 설정 Method
  private func makeKeyboardToolBar() {
    let toolBar = UIToolbar()
    toolBar.sizeToFit()
    let flixibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
    let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(doneButtonTouched(_:)))
    let addTimeStampLabel = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addCurrentTimeLabe(_:)))
    toolBar.setItems([addTimeStampLabel, flixibleSpace, doneButton], animated: false)
    diaryTextView.inputAccessoryView = toolBar
  }
  
  @objc private func doneButtonTouched(_ sender: Any) {
    view.endEditing(true)
  }
  
  @objc private func addCurrentTimeLabe(_ sender: Any) {
    let currentTimeText: String = getCurrentTime()
    diaryTextView.text.append(currentTimeText)
  }
}

extension DiaryViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  @IBAction func addPhotoButton(_ sender: Any) {
    let picker = UIImagePickerController()
    picker.delegate = self
    picker.allowsEditing = true
    self.present(picker, animated: false, completion: nil)
  }
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    let pickerImage = info[UIImagePickerControllerEditedImage] as? UIImage
    dailyPhotoImageView.image = pickerImage
    picker.dismiss(animated: false, completion: nil)
  }
}

