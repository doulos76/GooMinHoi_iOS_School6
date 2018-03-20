//
//  NextViewController.swift
//  SlackAddWorkspacesUI
//
//  Created by giftbot on 2018. 3. 17..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class NextViewController: UIViewController {
  
  @IBOutlet private weak var nextButton: UIButton!
  @IBOutlet private weak var emailAddressTextField: UITextField!
  @IBOutlet private weak var guidanceLabel: UILabel!
  @IBOutlet private weak var guidanceLabelBottomConstraint: NSLayoutConstraint!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupUI()
  }
  
  private func setupUI() {
    guidanceLabel.alpha = 0.0
    emailAddressTextField.becomeFirstResponder()
  }
}

extension NextViewController: UITextFieldDelegate {
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    let text = textField.text ?? ""
    let replaceText = (text as NSString).replacingCharacters(in: range, with: string)
    
    UIView.animate(withDuration: 0.3, delay: 0, options: [.curveEaseInOut], animations: {
      [weak self] in
      if replaceText.isEmpty {
        self?.guidanceLabelBottomConstraint.priority = .defaultLow
        self?.guidanceLabel.alpha = 1.0
        self?.nextButton.isSelected = false
      } else {
        self?.view.layoutIfNeeded()
      }
    })
    return true
  }
}
