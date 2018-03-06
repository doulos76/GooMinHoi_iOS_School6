//
//  UserDataModel.swift
//  MainProject
//
//  Created by 구민회 on 26/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

// 아이디
// 비밀번호
// 이메일
// 성별
// 생일
import Foundation

// enum 형식
enum Gender: Int {
    case Man = 0
    case Girl = 1
}

// Data modeling
struct UserDataModel {
    var userID: String
    var userPW: String
    var email: String
    var birthDay: String?
    var gender: Gender?
    //var gender: Bool?
    
    init? (dic: [String:Any])
    {
        //        if let id = dic["userID"] as? String
        //        {
        //            userID = id
        //        }
        //        else
        //        {
        //            return nil
        //        } ==> guard 문으로 대치
        
        guard let id = dic["userID"] as? String else { return nil }
        guard let pw = dic["userPW"] as? String else { return nil }
        guard let email = dic["userPW"] as? String else { return nil }
        
        self.userID = id
        self.userPW = pw
        self.email = email
        
        var friends: [UserDataModel] = []
        
        self.birthDay = dic["birthday"] as? String
        //self.gender = dic["gender"] as? Int     // server에서 Gender를 사욜할 경우 self.gender = dic["Gender"] as? Int
        if let genderNum = dic["gender"] as? Int {
            gender = Gender(rawValue: genderNum)
            
//            if genderNum == 0
//            {
//                gender = true
//                //gender = Gender.Man
//            } else
//            {
//                gender = false
//                //gender = Gender.Girl
//            }
        }
        
        
        // SNS같은 구조는 이런 경우가 많을 수 있음
        if let list = dic["friendList"] as? [[String:Any]]
        {
            for dic in list
            {
                if let friendData = UserDataModel(dic: dic)
                {
                    friends.append(friendData)
                }
            }
        }
        
        
    }
}
