//
//  ViewController.swift
//  UIDeviceExampleTest
//
//  Created by 구민회 on 26/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

/*****************************************
 UIDevice
 - 디바이스 이름/ 모델 / 화면 방향 등
 - OS 이름 / 버전
 - 인터페이스 형식 (phone, pad, tv 등)
 - 배터리 정보
 - 근접 센서 정보
 - 멀티 테스킹 지원 여부
 ******************************************/

class ViewController: UIViewController {
  
  @IBOutlet private weak var label: UILabel!
  let device = UIDevice.current // Singleton
  
  @IBAction private func systemVersion() {
    /*****************************************
     Version: Major, Minor (public), Minor (non-public)
     ******************************************/
    
    print("\n------------ [ System Version ] ----------------\n")
    print("System Name: ", device.systemName)
    print((device.systemVersion as NSString).floatValue)
    
    let systemVersion = device.systemVersion
    print(systemVersion)
    
    let splitVersion = systemVersion.split(separator: ".").flatMap {Int($0)}
    print(splitVersion)
    
    if splitVersion.count > 2 {
      label.text = "\(splitVersion[0]).\(splitVersion[1]).\(splitVersion[2])"
    } else {
      label.text = "\(splitVersion[0]).\(splitVersion[1])"
    }

  }
  
  @IBAction private func architecture() {
    print("\n----------- [ Architecture ] -----------------\n")
    #if (arch(i386) || arch(x86_64)) && os(iOS)
      print("Simulator")
      label.text = "Simulator"
    #else
      print("Device")
      label.text = "Device"
    #endif
    
    // 1 1 0 1 1 1 1 1 0 0 0    Simulator
    // 1 1 0 0 0 1 1 1 0 0 1    Device: iPhoneX
    print("TARGET_OS_MAC : ", TARGET_OS_MAC)
    print("TARGET_OS_IOS : ", TARGET_OS_IOS)
    print("TARGET_CPU_X86 : ", TARGET_CPU_X86)
    print("TARGET_CPU_X86_64 : ", TARGET_CPU_X86_64)
    print("TARGET_OS_SIMULATOR : ", TARGET_OS_SIMULATOR)
    print("TARGET_RT_64_BIT : ", TARGET_RT_64_BIT)
    print("TARGET_RT_LITTLE_ENDIAN : ", TARGET_RT_LITTLE_ENDIAN)
    print("TARGET_CPU_ARM : ", TARGET_CPU_ARM)
    print("TARGET_CPU_ARM64 : ", TARGET_CPU_ARM64)
  }
  
  @IBAction private func deviceModel() {
    print("\n--------------[ Device Model ]---------------\n")
    print("name : ", device.name)
    print("model : ", device.model)
    print("localizedModel : ", device.localizedModel)
    print("userInterfaceIdiom : ", device.userInterfaceIdiom)
    print("orientation : ", device.orientation)
    print("isMultitaskingSupported : ", device.isMultitaskingSupported) // 최신 기기에서는 항상 true
    
    // extension
    print("moddelIdentifier : ", device.modelIdentifier)
    
    
    
    
    
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension UIDeviceBatteryState: CustomStringConvertible {
  public var description: String {
    switch self {
    case .unknown: return "unknown"
    case .unplugged: return "unplugged"
    case .charging: return "charging"
    case .full: return "full"
    }
  }
}

extension UIUserInterfaceIdiom: CustomStringConvertible {
  public var description: String {
    switch self {
    case .unspecified: return "unspecified"
    case .phone: return "phone"
    case .pad: return "pad"
    case .tv: return "tv"
    case .carPlay: return "carPlay"
    }
  }
}

extension UIDeviceOrientation: CustomStringConvertible {
  public var description: String {
    switch self {
    case .unknown: return "unknown"
    case .portrait: return "portrait"
    case .portraitUpsideDown: return "portraitUpsideDown"
    case .landscapeLeft: return "landscapeLeft"
    case .landscapeRight: return "landscapeRight"
    case .faceUp: return "faceUp"
    case .faceDown: return "faceDown"
    }
  }
}

extension UIInterfaceOrientation: CustomStringConvertible {
  public var description: String {
    switch self {
    case .unknown:return "unknown"
    case .portrait:return "portrait"
    case .portraitUpsideDown:return "portraitUpsideDown"
    case .landscapeLeft:return "landscapeLeft"
    case .landscapeRight:return "landscapeRight"
    }
  }
}











































