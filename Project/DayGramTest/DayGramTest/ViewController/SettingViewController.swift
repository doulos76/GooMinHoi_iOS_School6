//
//  SettingViewController.swift
//  DayGramTest
//
//  Created by dave on 18/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func dismiss(_ sender: Any) {
    self.presentingViewController?.dismiss(animated: true, completion: nil)
  }
  
}
