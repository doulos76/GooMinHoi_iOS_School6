//
//  ViewController.swift
//  PListSample
//
//  Created by 구민회 on 27/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let loadDataDic = loadPlistData(fileName: "Sample")
        print(loadDataDic["name"]!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// Bundle에서 가져 오는 함수 구현
    ///
    /// - Parameter fileName: 파일 이름
    /// - Returns: 딕셔너리 형태로 출력
    func loadPlistData(fileName: String) -> [String:String]
    {
        // 1. path
        if let path = Bundle.main.path(forResource: fileName, ofType: "plist")
        {
            // 2. data로 로드
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path))
                let dic = try PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String : String]
                
                return dic
            } catch {
                print("Error")
                
            }
        }
        return [:]
    }
    
    func loadPlistForDoc(fileName: String) -> [String : String]? {
        let rootPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
        //rootPath[0]
        let fullpath = rootPath + "/" + fileName + ".plist"
        do {
            if !FileManager.default.fileExists(atPath: fullpath) {
                // 번들에 있는 데이터를 도큐먼트에 복사 -> copy
                // 파일이 존재하지 않을 때!!
                if let bundlePath = Bundle.main.path(forResource: fileName, ofType: "plist")
                {
                    try FileManager.default.copyItem(atPath: bundlePath, toPath: fullpath)
                }
                
            }
            
            if let data = try? Data(contentsOf: URL(fileURLWithPath: fullpath)),var dic = try? PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil) as! [String : String]
            {
                dic.updateValue("wing", forKey: "ID")
                
                let newData = try PropertyListSerialization.data(fromPropertyList: dic, format: .xml, options: 0)
                try newData.write(to: URL(fileURLWithPath: fullpath))
            }

        } catch {
            return nil
        }
        return nil
    }
}

