//
//  MainDataCenter.swift
//  MainProjectTest01
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import Foundation

class MainDataCenter {
    static var sharedInstance: MainDataCenter = MainDataCenter()
    var friendList: [[String:String]]!
    var friendListCount: Int {
        return friendList.count
    }
    // ... is ...
    var friendListModel: [UserModel] {
        var list: [UserModel] = []
        for dic in friendList {
            list.append(UserModel(dic: dic)!)
        }
        return list
    }
    
    private init()
    {
        loadFriendList()
    }
    
    private func loadFriendList()
    {
        let path = Bundle.main.path(forResource: "FriendInfo", ofType: "plist")!
        let data = try! Data(contentsOf: URL(fileURLWithPath: path))
        let property = try! PropertyListSerialization.propertyList(from: data, options: .mutableContainersAndLeaves, format: nil)
        let list = property as? [[String : String]]
        friendList = list
    }
    
    func friendData(with index: Int) -> UserModel {
        let dic = friendList[index]
        return UserModel(dic: dic)!
    }
    
}
//    <key>PhoneNumber</key>
//    <key>ProfileImage</key>
//    <key>MyProfileDescription</key>
//    <key>BackgroundImage</key>
//    <key>StatusDescription</key>
//    <key>Nickname</key>
//    <key>Email</key>
//    <key>LikeCount</key>

struct UserModel {
    var phoneNumber: String
    var profileImageUrl: String
    var profileDescription: String
    var backgroundImageUrl: String
    var statusDescription: String
    var nickName: String
    var email: String

    init?(dic: [String : String]) {
        guard let phoneNumber = dic["PhoneNumber"] else {return nil}
        guard let profileImg = dic["ProfileImage"] else {return nil}
        guard let profileDescription = dic["MyProfileDescription"] else {return nil}
        guard let bgImg = dic["BackgroundImage"] else {return nil}
        guard let statusDes = dic["StatusDescription"] else {return nil}
        guard let nick = dic["Nickname"] else {return nil}
        guard let email = dic["Email"] else {return nil}
        
        self.phoneNumber = phoneNumber
        self.profileImageUrl = profileImg
        self.profileDescription = profileDescription
        self.backgroundImageUrl = bgImg
        self.statusDescription = statusDes
        self.nickName = nick
        self.email = email
    }
 
}

