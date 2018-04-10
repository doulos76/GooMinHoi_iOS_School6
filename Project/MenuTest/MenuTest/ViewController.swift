//
//  ViewController.swift
//  MenuTest
//
//  Created by dave on 09/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var monthSelectView: UICollectionView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    monthSelectView.isHidden = true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func monthSelectButton(_ sender: UIButton) {
    monthSelectView.isHidden = false
    
  }
  
}

