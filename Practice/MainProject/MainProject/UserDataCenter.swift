//
//  UserDataCenter.swift
//  MainProject
//
//  Created by 구민회 on 26/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import Foundation

class UserDataCenter {
    
    static var main: UserDataCenter = UserDataCenter()
    
    var isLogin: Bool?
    
    private var userList: [String] = []
    
    func login(userID: String, userPw: String) -> Bool {
        isLogin = true
        // 데이터 저장
        return true
    }
    
    func signUp(userID:String, userPw: String) -> Bool {
        //self.userList.append()
        return true
    }
    
}
