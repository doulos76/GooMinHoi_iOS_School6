//
//  UIDeviceExtension.swift
//  UIDeviceExampleTest
//
//  Created by 구민회 on 26/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

extension UIDevice {
  var isIPhoneX: Bool {
    return UIScreen.main.nativeBounds.height / UIScreen.main.nativeScale == 812
  }
  var isIPhone: Bool {
    return UIDevice.current.userInterfaceIdiom == .phone
  }
  
  var modelIdentifier: String {
    var sysinfo = utsname()
    uname(&sysinfo)
    let data = Data(bytes: <#T##UnsafeRawPointer#>, count: <#T##Int#>)
  }
  
}
