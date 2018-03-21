//
//  ViewController.swift
//  DispatchQueExempleTest
//
//  Created by 구민회 on 20/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  private weak var testView: UIView!
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    //bigTaskOnMainThread()
    uiTaskOnBackgroundThread()
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  private func bigTaskOnMainThread() {
    //(1)
    print("big task start")
      for _ in 0...900_000_000 { _ = 1 + 1}
      print("big task end. start UI task")
    view.backgroundColor = .magenta
    
    //(2)
//    print("big task start")
//    DispatchQueue.global().async {
//      for _ in 0...900_000_000 { _ = 1 + 1}
//      print("big task end. start UI task")
//    }
//    view.backgroundColor = .magenta
  }
  
  private func uiTaskOnBackgroundThread() {
    DispatchQueue.global().async { [weak self] in
      for _ in 0...900_000_000 { _ = 1 + 1}
      
      DispatchQueue.main.async {
        self?.testView?.frame.origin.y += 250
        self?.view.backgroundColor = .yellow
      }
    }
  }
  
  private func performanceTest() {
    
  }


}

