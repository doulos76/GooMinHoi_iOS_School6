//
//  AppDelegate.swift
//  iOSTest
//
//  Created by 구민회 on 29/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?
  static var instance: AppDelegate {
    return UIApplication.shared.delegate as! AppDelegate
  }
  
  //MARK: - Initialize App
  private func initializeApp() {
    setupSessionChangeNotification()
    setupRootViewController()
  }
  
  private func setupSessionChangeNotification() {
    NotificationCenter.default.addObserver(
      forName: Notification.Name.KOSessionDidChange, object: nil, queue: .main
    ) { [unowned self] noti in
      guard let session = noti.object as? KOSession else { return }
      session.isOpen() ? print("Login") : print("Logout")
      self.setupRootViewController()
    }
  }
  
  private func setupRootViewController() {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    let navigationController = storyboard.instantiateInitialViewController() as! UINavigationController
    
    if KOSession.shared().isOpen() {
      let mainVC = storyboard.instantiateViewController(withIdentifier: "MainViewController") as! MainViewController
      navigationController.viewControllers = [mainVC]
    } else {
      let loginVC = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
      navigationController.viewControllers = [loginVC]
    }
    window?.rootViewController = navigationController
  }


  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    initializeApp()
    return true
  }

  func applicationDidEnterBackground(_ application: UIApplication) {
    KOSession.handleDidEnterBackground()
  }
  
  func applicationDidBecomeActive(_ application: UIApplication) {
    KOSession.handleDidBecomeActive()
  }
  
  func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
    if KOSession.isKakaoAccountLoginCallback(url) {
      return KOSession.handleOpen(url)
    }
    return false
  }
}

