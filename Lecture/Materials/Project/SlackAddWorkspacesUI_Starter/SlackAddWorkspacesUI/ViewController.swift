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
  
  // MARK:- Properties
  
  @IBOutlet private weak var nextButton: UIButton!
  @IBOutlet private weak var dismissButton: UIButton!
  @IBOutlet private weak var urlTextField: UITextField!
  @IBOutlet private weak var placeholderLabel: UILabel!

  // Constraints
  @IBOutlet private weak var placeholderLabelLeadingConstraint: NSLayoutConstraint!
  @IBOutlet private weak var dontKnowURLLabelBottomConstraint: NSLayoutConstraint!
  
  // Segue Identifier
  private let nextVCModalSegue = "NextViewControllerModalSegue"
  
  
  // MARK:- LifeCycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}
