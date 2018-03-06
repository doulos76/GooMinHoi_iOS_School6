//
//  ViewController.swift
//  MainProject
//
//  Created by 구민회 on 26/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var list:[[String:Any]] = []
    
    var model: UserDataModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //var modelList
        
        let model = AlbumDataModel(dic: album["albumInfo"] as! [String: String])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

