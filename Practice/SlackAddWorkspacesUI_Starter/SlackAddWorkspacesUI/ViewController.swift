//
//  ViewController.swift
//  SlackAddWorkspacesUI
//
//  Created by giftbot on 2018. 3. 16..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit
import AudioToolbox.AudioServices

final class ViewController: UIViewController {
  
  // MARK: Properties
  
  @IBOutlet private weak var nextButton: UIButton!
  @IBOutlet private weak var dismissButton: UIButton!
  @IBOutlet private weak var urlTextField: UITextField!
  @IBOutlet private weak var placeholderLabel: UILabel!
  
  // Constraints
  @IBOutlet private weak var placeholderLabelLeadingConstraint: NSLayoutConstraint!
  @IBOutlet private weak var dontKnowURLLabelBottomConstraint: NSLayoutConstraint!
  
  // Segue Identifier
  private let nextVCModalSegue = "NextViewControllerModalSegue" // 일반적으로는 segue를 사용할 결우 변수를 선언해 사용한다. Text를 사용할 경우 오타가 날 확률이 놓음
  
  // MARK: Transition
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let destVC = segue.destination as? NextViewController else { return }
    print(segue.destination)
  }
  
  override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
    guard identifier == nextVCModalSegue, nextButton.isSelected else {
      vibration()
      return false
    }
    return true
  }
  
  private func vibration() {
    AudioServicesPlaySystemSoundWithCompletion(kSystemSoundID_Vibrate) {
      [weak self] in
      DispatchQueue.main.async {
        self?.urlTextField.becomeFirstResponder()
      }
    }
  }
  
  @IBAction private func unwind(_ sender: UIStoryboardSegue) {
    print(sender.source)
  }
  
  // MARK: LifeCycle
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    urlTextField.becomeFirstResponder()
    addKeyboardObserver()
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillAppear(animated)
    NotificationCenter.default.removeObserver(self)
  }
  
  private func addKeyboardObserver() {
    NotificationCenter.default.addObserver(forName: .UIKeyboardWillShow, object: nil, queue: .main) {
      [weak self] in
      guard let userInfo = $0.userInfo,
        let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect,
        let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
        let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt
        else { return }
      
      UIView.animate(
        withDuration: duration,
        delay: 0,
        options: UIViewAnimationOptions(rawValue: curve),
        animations: {
          [weak self] in
          self!.dontKnowURLLabelBottomConstraint.constant = keyboardFrame.height + 30
          self?.view.layoutIfNeeded()
      })
    }
    NotificationCenter.default.addObserver(forName: .UIKeyboardWillHide, object: nil, queue: .main) { [weak self] in
      guard let userInfo = $0.userInfo,
        let keyboardFrame = userInfo[UIKeyboardFrameEndUserInfoKey] as? CGRect,
        let duration = userInfo[UIKeyboardAnimationDurationUserInfoKey] as? TimeInterval,
        let curve = userInfo[UIKeyboardAnimationCurveUserInfoKey] as? UInt
        else { return }
      
      UIView.animate(withDuration: duration,
                     delay: 0,
                     options: UIViewAnimationOptions(rawValue: curve),
                     animations: {
                      [weak self] in
                      self!.dontKnowURLLabelBottomConstraint.constant = 30
                      self?.view.layoutIfNeeded()
      })
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.updateConstraintsIfNeeded()
  }
  
  private var didUpdateConstraints = false
  override func updateViewConstraints() {
    if !didUpdateConstraints {
      didUpdateConstraints = true
      
      nextButton.translatesAutoresizingMaskIntoConstraints = false
      nextButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
      nextButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
      
      dismissButton.translatesAutoresizingMaskIntoConstraints = false
      dismissButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
      dismissButton.centerYAnchor.constraint(equalTo: nextButton.centerYAnchor).isActive = true
    }
    super.updateViewConstraints()
  }
  
  deinit {
    
  }
  
  @IBAction private func dismissButton(_ sender: UIButton) {
    resignFirstResponder()
    dismiss(animated: true)
  }
  
  // 프로그램으로 underline 된 attribute button 구현
  //  private func uderlineStyleByProgrammaticallyExample() {
  //    let buttonTitle = nextButton.title(for: .normal)!
  //    let mutableAttrStr = NSMutableAttributedString(string: buttonTitle)
  //    let attrKeys: [NSAttributedStringKey: Any] = [.uderlineStyle: NSUnderlineStyle.styleSingle.rawValue, underlineColor: UIColor.darkGray]
  //    mutableAttrStr.addAttributes(attrKeys, range: NSRange(location: 0, length: buttonTitle.count)
  //    nextButton.setAttributedTitle(mutableAttrStr, for: .normal)
  //  }
  
  
}


// MARK: -UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    if shouldPerformSegue(withIdentifier: nextVCModalSegue, sender: nil) {
      shouldPerformSegue(withIdentifier: nextVCModalSegue, sender: nil)
    }
    return true
  }
  
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let text = textField.text ?? ""
    let replacedText = (text as NSString).replacingCharacters(in: range, with: string)
    placeholderLabel.text = replacedText.isEmpty ? "your-url.slack.com" : ".slack.com"
    nextButton.isSelected = !replacedText.isEmpty
    let attrkey = [NSAttributedStringKey.font: textField.font!]
    let textWidthSize = (replacedText as NSString).size(withAttributes: attrkey).width
    guard textWidthSize < view.bounds.width - 120 else { return false }
    placeholderLabelLeadingConstraint.constant = textWidthSize
    return true
  }
  
}













