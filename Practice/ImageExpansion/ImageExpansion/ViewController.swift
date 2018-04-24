//
//  ViewController.swift
//  ImageExpansion
//
//  Created by dave on 24/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    @IBOutlet weak var preview: UIImageView!
    
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldReceive touch: UITouch) -> Bool {
        
        print("tapped")
        return true
    }
    
    
}
