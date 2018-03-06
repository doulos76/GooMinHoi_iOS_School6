//
//  ViewController.swift
//  PlistSampleTest
//
//  Created by 구민회 on 27/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let  loadDataDic = loadPlistData(fileName: "Sample")
        print(loadDataDic["name"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadPlistData(fileName: String) -> [String : String] {
        // 1. path setting
        if let path = Bundle.main.path(forResource: fileName, ofType: "plist") {
            // 2. load as data
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let dic = try PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String : String]
                return dic
            } catch {
                print("에러")
            }
        }
        
        return [:]
    }
}

