//
//  ViewController.swift
//  FoodTracker
//
//  Created by dave on 07/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import os.log
import UIKit

class MealViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  // MARK: Properties
  @IBOutlet weak var nameTextField: UITextField!
  @IBOutlet weak var photoImageView: UIImageView!
  @IBOutlet weak var ratingControl: RatingControl!
  
  @IBOutlet weak var saveButton: UIBarButtonItem!
  /*
   This value is either passed by `MealTableViewController` in `prepare(for:sender:)`
   or constructed as part of adding a new meal
  */
  var meal: Meal?
  
  //MARK: ViewLifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    print("\n-------------[ veiwDidLoad ]-------------------\n")
    
    // Handle the text field's user input through delegate callbacks.
    nameTextField.delegate = self
    
    // Enable the Save button only if the text field has a valid Meal name.
    updateSaveButtonState()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    print("\n-------------[ viewWillAppear ]-------------------\n")
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(true)
    print("\n-------------[ viewDidAppear ]-------------------\n")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(true)
    print("\n-------------[ viewWillDisappear ]-------------------\n")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(true)
    print("\n-------------[ viewDidDisappear ]-------------------\n")
  }
  
  // MARK: UITextFieldDelegate
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    // Hide athe keyboard
    textField.resignFirstResponder()
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    updateSaveButtonState()
    navigationItem.title = textField.text
  }
  
  func textFieldDidBeginEditing(_ textField: UITextField) {
    // Disable the Save button while editing.
    saveButton.isEnabled = false
  }
  
  // MARK: UIImagePickerControllerDelegate
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    // Dismiss the picker if the user canceled.
    dismiss(animated: true, completion: nil)
  }
  
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    
    // The info dictionary may contain multiple representations of the image. You want to use the original.
    guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
      fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
    }
    
    // Set photoImageView to display the selected image
    photoImageView.image = selectedImage
    
    // Dismiss the picker
    dismiss(animated: true, completion: nil)
  }
  
  // MARK: Navigation
  @IBAction func cancel(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
  // This method lets you configure a view controller before it's presented.
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    super.prepare(for: segue, sender: sender)
    // Configure the destination view controller only when the save button is pressed.
    guard let button = sender as? UIBarButtonItem, button === saveButton else {
      os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
      return
    }
    
    let name = nameTextField.text ?? ""
    let photo = photoImageView.image
    let rating = ratingControl.rating
    
    // Set the meal to be passed to MealTableController after the unwind segue.
    meal = Meal(name: name, photo: photo, rating: rating)
  }
  
  // MARK: Actions
  @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
    // Hide the keyboard
    nameTextField.resignFirstResponder()
    
    // UIImagePickerController is a view controller that lets a user pick media from their photo library
    let imagePickerController = UIImagePickerController()
    
    // Only allow photos to be picked, not taken.
    imagePickerController.sourceType = .photoLibrary
    
    // Make sure ViewController is notified when the user picks an image.
    imagePickerController.delegate = self
    present(imagePickerController, animated: true, completion: nil)
  }
    
//  @IBAction func setDefaultLabelText(_ sender: UIButton) {
//    mealNameLabel.text = "Default Text"
//  }

  // MARK: Private Methods
  private func updateSaveButtonState() {
    // Disable the Save button if the text field is empty.
    let text = nameTextField.text ?? ""
    saveButton.isEnabled = !text.isEmpty
  }
  
}

