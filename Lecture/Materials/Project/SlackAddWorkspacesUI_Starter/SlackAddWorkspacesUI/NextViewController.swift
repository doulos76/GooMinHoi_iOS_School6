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
  }
}
