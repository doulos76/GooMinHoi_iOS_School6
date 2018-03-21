//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

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
  guard let data = data, let jsonObject = try? JSONSerialization.jsonObject(with: data) as! [String: Any]
    else {
      print("No data")
      return
  }
  //print(jsonObject)
  guard (jsonObject["message"] as? String) == "success",
    let people = jsonObject["people"] as? [[String: String]],
    let peopleCount = jsonObject["number"] as? Int
    else {
      print("Parsing Error")
      return
  }
  print("총 \(peopleCount)명의 우주비행사가 탑승 중입니다.")
  print("= 우주 비행사 명단 =")
  people
    .flatMap { $0["name"]}
    .forEach({ print($0)})
}

dataTask.resume()
