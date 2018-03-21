//
//  ViewController.swift
//  JSONTest
//
//  Created by 구민회 on 21/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let apiURL = URL(string: "http://api.open-notify.org/astros.json")!
    
    let dataTask = URLSession.shared.dataTask(with: apiURL) { (data, response, error) in
      guard error == nil else {
        print(error!.localizedDescription)
        //throw Network.errorOccured 함수 만들고 처리 하게 만듦
        return
      }
      
      guard let response = response as? HTTPURLResponse, 200..<400 ~= response.statusCode else {
        print("StatusCode is not valid")
        return
      }
      guard let data = data,
      let jsonObject = try? JSONSerialization.jsonObject(with: data) as! [String: Any]
      //jsonObject["message"] ==
      else {
        print("No data")
        return
      }
      print(jsonObject)
    }
    
    dataTask.resume()

  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


//  func writeJSONObjectToOutputStream() {
//    let jsonObject = ["hello": "world", "foo": "bar", "iOS": "Swift"]
//    guard JSONSerialization.isValidJSONObject(jsonObject) else { return }
//
//    let jsonFilePath = "myJsonFile.json"
//    let outputJSON = OutputStream(toFileAtPath: jsonFilePath, append: false)!
//    outputJSON.open()
//    _ = JSONSerialization.writeJSONObject(
//      jsonObject,
//      to: outputJSON,
//      options: [.prettyPrinted, .sortedKeys],
//      //options: []
//      error: nil
//    )
//    outputJSON.close()
//    do {
//      let jsonString = try String(contentsOfFile: jsonFilePath)
//      print(jsonString)
//    } catch {
//      print(error.localizedDescription)
//    }
//  }
//
//  private func dataWithJSONObject() {
//    let jsonObject1: [Stirng: Any] = [
//      "someNumber": 1,
//      "someString": "stirng"]
//  }
  
}

