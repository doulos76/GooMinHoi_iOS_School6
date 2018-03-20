//
//  ViewController.swift
//  AnimationTest01
//
//  Created by 구민회 on 20/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var myBtn0: UIButton!
  @IBOutlet private weak var myBtn1: UIButton!
  @IBOutlet private weak var myBtn2: UIButton!
  @IBOutlet private weak var myBtn3: UIButton!
  @IBOutlet private weak var myBtn4: UIButton!
  @IBOutlet private weak var myBtn5: UIButton!
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    
    setUpRightBtns()
    
    
  }
  
  private func setUpRightBtns() {
    myBtn0.backgroundColor = .orange
    myBtn0.layer.cornerRadius = 25
    
    myBtn1.backgroundColor = .red
    myBtn1.layer.cornerRadius = 25
    
    myBtn2.backgroundColor = .black
    myBtn2.layer.cornerRadius = 25
    
    myBtn3.backgroundColor = .gray
    myBtn3.layer.cornerRadius = 25
    
    myBtn4.backgroundColor = .yellow
    myBtn4.layer.cornerRadius = 25
    
    myBtn5.backgroundColor = .brown
    myBtn5.layer.cornerRadius = 25
  }
  
  
  
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

