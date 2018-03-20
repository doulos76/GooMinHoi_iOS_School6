//
//  ViewController.swift
//  SlackAddWorkspacesUI
//
//  Created by giftbot on 2018. 3. 16..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

class ViewController: UIViewController {
  
  // MARK: Properties
  
  @IBOutlet private weak var nextButton: UIButton!
  @IBOutlet private weak var dismissButton: UIButton!
  
  @IBOutlet private weak var urlTextField: UITextField!
  @IBOutlet private weak var placeholderLabel: UILabel!

  @IBOutlet private weak var placeholderLabelLeadingConstraint: NSLayoutConstraint!
  @IBOutlet private weak var dontKnowURLLabelBottomConstraint: NSLayoutConstraint!
  
  private let nextVCModalSegue = "NextViewControllerModalSegue"
  
  // MARK: LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    urlTextField.becomeFirstResponder()
    addKeyboardObserver()
  }

  var didUpdateConstraints = false
  override func updateViewConstraints() {
    if !didUpdateConstraints {
      
      // Creating constraints using NSLayoutConstraint
//      NSLayoutConstraint(
//        item: nextButton,
//        attribute: .top,
//        relatedBy: .equal,
//        toItem: view.safeAreaLayoutGuide,
//        attribute: .top,
//        multiplier: 1,
//        constant: 0
//      ).isActive = true
      
      nextButton.translatesAutoresizingMaskIntoConstraints = false
      nextButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
      nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
      
      dismissButton.translatesAutoresizingMaskIntoConstraints = false
      dismissButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
      dismissButton.centerYAnchor.constraint(equalTo: nextButton.centerYAnchor).isActive = true

      didUpdateConstraints = true
    }
    super.updateViewConstraints()
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    NotificationCenter.default.removeObserver(self)
  }
  
  // MARK: Setup
  
  private func addKeyboardObserver() {
    func parsingKeyboardInfo(
      userInfo: [AnyHashable : Any]
      ) -> (frame: CGRect, duration: TimeInterval, option: UIViewAnimationOptions) {
      let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as! CGRect
      let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! TimeInterval
      let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! UInt
      return (keyboardFrame, duration, UIViewAnimationOptions(rawValue: curve))
    }
    
    NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: .main) { [weak self] in
      guard let userInfo = $0.userInfo, let strongSelf = self else { return }
      let keyboard = parsingKeyboardInfo(userInfo: userInfo)
      UIView.animate(withDuration: keyboard.duration, delay: 0, options: keyboard.option, animations: {
        strongSelf.dontKnowURLLabelBottomConstraint.constant = keyboard.frame.height + 30
        strongSelf.view.layoutIfNeeded()
      })
    }
    
    NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: .main) { [weak self] in
      guard let userInfo = $0.userInfo, let strongSelf = self else { return }
      let keyboard = parsingKeyboardInfo(userInfo: userInfo)
      UIView.animate(withDuration: keyboard.duration, delay: 0, options: keyboard.option, animations: {
        strongSelf.dontKnowURLLabelBottomConstraint.constant = 30
        strongSelf.view.layoutIfNeeded()
      })
    }
  }
  
  private func underlineStyleByProgrammaticallyExample() {
    let buttonTitle = nextButton.title(for: .normal)!
    let mutableAttrStr = NSMutableAttributedString(string: buttonTitle)
    let attrKeys: [NSAttributedStringKey: Any] = [
      .underlineStyle: NSUnderlineStyle.styleSingle.rawValue,
      .underlineColor: UIColor.darkGray
    ]
    mutableAttrStr.addAttributes(attrKeys, range: NSRange(location: 0, length: buttonTitle.count))
    nextButton.setAttributedTitle(mutableAttrStr, for: .normal)
  }
  
  
  // MARK: Transition
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let destVC = segue.destination as? NextViewController else { return }
    print(destVC)
  }
  
  override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    guard nextButton.isSelected, identifier == nextVCModalSegue else {
      vibration()
      return false
    }
    return true
  }
  
  private func vibration() {
    // kSystemSoundID_Vibrate 4095
    AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) { [weak self] in
      DispatchQueue.main.async {
        self?.urlTextField.becomeFirstResponder()
      }
    }
  }
  
  // MARK: ActionHandler
  
  @IBAction private func dismissViewController(_ sender: Any) {
    urlTextField.resignFirstResponder()
    dismiss(animated: true)
  }
  
  @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
    print("unwind from", segue.source)
  }
}

// MARK: - UITextFieldDelegate

extension ViewController : UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if shouldPerformSegue(withIdentifier: nextVCModalSegue, sender: nil) {
      performSegue(withIdentifier: nextVCModalSegue, sender: nil)
    }
    return true
  }
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    guard string.unicodeScalars.first?.value != 10 else { return true }
    let text = textField.text ?? ""
    let replacedText = (text as NSString).replacingCharacters(in: range, with: string)
    
//    var replacedText = ""
//    if string.isEmpty {
//      if !text.isEmpty {
//        let startIndex = text.startIndex
//        let endIndex = text.index(text.endIndex, offsetBy: -1)
//        replacedText = String(text[startIndex..<endIndex])
//      }
//    } else {
//      replacedText = text.appending(string)
//    }
    
    placeholderLabel.text = replacedText.isEmpty ? "your-url.slack.com" : ".slack.com"
    nextButton.isSelected = !replacedText.isEmpty
    
    let textFieldAttr = [NSAttributedStringKey.font: textField.font!]
    let textWidthSize = (replacedText as NSString).size(withAttributes: textFieldAttr).width
    guard textWidthSize < view.bounds.width - 120 else { return false }
    
    placeholderLabelLeadingConstraint.constant = textWidthSize
    view.layoutIfNeeded()
    return true
  }
}



