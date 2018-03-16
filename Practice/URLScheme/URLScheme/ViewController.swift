//
//  ViewController.swift
//  URLScheme
//
//  Created by 구민회 on 16/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    //openSetting()
    //openMessage()
    openMail()
    //openWebsite()
    //openFacebook()
    //openMyApp()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // 전화 - tel://010-1234-4578
  // 페이스타임 - facetime://010-9968-7975
  // 애플맵 검색 텍스트 - http://maps.apple.com/?q=searchText
  // 애플맵 (위겅도 지정) - http://maps.apple.com/?ll=latitude,longitude
  // 앱스토어 (구글맵) - https://itunes.apple.com/kr/app/google-maps/id585027354?mt=8
  // 유투브 - https://www.youtube.com/watch?v=BzYnNdJhZQw
  
  private func openSetting() {
    guard let settingURL = URL(string: UIApplicationOpenSettingsURLString),
      UIApplication.shared.canOpenURL(settingURL) else { return }
    if #available(iOS 10.0, *) {
      UIApplication.shared.open(settingURL)
    } else {
      UIApplication.shared.canOpenURL(settingURL)
    }
  }
  
  private func openMail() {
    // 메일 앱으로 이동
    let openMail = URL(string: "message://")!
    if UIApplication.shared.canOpenURL(openMail) {
      UIApplication.shared.open(openMail)
    }
  }
  
  private func openMessage() {
    let messageURL = URL(string: "sms:")!
    //let messageURL = URL(string: "sms://")! -> 일반적으로 많이 사용
    //let messageURL = URL(string: "sms:01012345678")!
    if UIApplication.shared.canOpenURL(messageURL) {
      UIApplication.shared.open(messageURL)
    }
  }
  
  private func openWebsite() {
    let websiteURL = URL(string: "https://www.youtube.com/watch?v=BzYnNdJhZQw")!
    if UIApplication.shared.canOpenURL(websiteURL) {
      UIApplication.shared.open(websiteURL)
    }
  }
  
  private func openFacebook() {
    let facebookScheme = URL(string: "fb://")!
    if UIApplication.shared.canOpenURL(facebookScheme) {
      UIApplication.shared.open(facebookScheme)
    }
    print(UIApplication.shared.canOpenURL(facebookScheme))
  }

  private func openMyApp() {
    //let myAppURL = URL(string: "myApp://")!
    let myAppURL = URL(string: "myApp://?name=abc&abc=10")!
    print(UIApplication.shared.canOpenURL(myAppURL))
    if UIApplication.shared.canOpenURL(myAppURL) {
      UIApplication.shared.open(myAppURL)
    }
  }

}

