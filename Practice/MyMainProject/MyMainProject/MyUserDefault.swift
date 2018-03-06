//
//  MyUserDefault.swift
//  MyMainProject
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import Foundation

class MyUserDefault {
    let fileName = "myUserDefault.plist"
    private var fullPath: String
    private var fileURL: URL
    
    static var standard: MyUserDefault = MyUserDefault()
    
    private init() {
        //1. 경로 찾기
        let directoryPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
         fullPath = directoryPath + "/" + fileName
        fileURL = URL(fileURLWithPath: fullPath)
    }
    
    // 키값을 받아서 해당 키값의 벨류를 리턴해 주는 함수
    func object(forKey defaultName: String) -> Any? {
        if !FileManager.default.fileExists(atPath: fullPath) {
            return nil
        }
        
        let data = try! Data(contentsOf: fileURL)
        let propertyList = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
        
        // 크래쉬가 날 경우 set메소드 로직 에러
        let dic = propertyList as! [String : Any?]
        if let value = dic[defaultName] {
            return value
        } else {
            return nil
        }
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        
        var dic: [String : Any?]!
        
        if FileManager.default.fileExists(atPath: fullPath) {
            let data = try! Data(contentsOf: fileURL)
            let propertyList = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
            dic = propertyList as! [String : Any?]
            dic.updateValue(value, forKey: defaultName)
        } else {
            dic = [defaultName : value]
        }
        
        // save
        let newData = try! PropertyListSerialization.data(fromPropertyList: dic, format: .xml, options: 0)
        try! newData.write(to: fileURL)
    }
    
    func removeObject(forKey defaultName: String) {
        if FileManager.default.fileExists(atPath: fullPath) {
            //load
            let data = try! Data(contentsOf: fileURL)
            let propertyList = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
            var dic = propertyList as! [String : Any?]
            
            // 삭제(Remove)
            dic.removeValue(forKey: defaultName)
            
            // Save
            let newData = try! PropertyListSerialization.data(fromPropertyList: dic, format: .xml, options: 0)
            try! newData.write(to: fileURL)
        }
    }
}



















