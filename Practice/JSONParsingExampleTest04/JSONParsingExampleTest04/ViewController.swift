//
//  ViewController.swift
//  JSONParsingExampleTest04
//
//  Created by 구민회 on 22/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

//JSON File
//{
//  "id":1,
//  "name":"Instagram Firebase",
//  "link":"https://www.letsbuildthatapp.com/course/instagram-firebase",
//  "imageUrl":"https://letsbuildthatapp-videos.s3-us-west-2.amazonaws.com/04782e30-d72a-4917-9d7a-c862226e0a93"
//}

import UIKit

// (1) JSON File에 대한 Modeling을 함, struct로 함.
struct Courses: Decodable {
  let id: Int
  let name: String
  let link: String
  let imageUrl: String
  
  // JSON file 에 대한 initializer 생성
//  init(json: [String: Any]) {
//    id = json["id"] as? Int ?? -1
//    name = json["name"] as? String ?? ""
//    link = json["link"] as? String ?? ""
//    imageUrl = json["imageUrl"] as? String ?? ""
//  }
}

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // jsonUrlString 상수를 선언하고 불러올 URL string을 넣음
    let jsonUrlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
    
    guard let url = URL(string: jsonUrlString) else { return }
    
    URLSession.shared.dataTask(with: url) { (data, response, err) in
      // perhaps check err
      // also perhaps check response status 200 OK
      
      guard let data = data else { return }
      do {
        let course = try JSONDecoder().decode(Courses.self, from: data)
        print(course.name)
        
        //Swift 2, Swift3, Object-C
//        guard let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] else { return }
        
        
//        let course = Courses(json: json)
//        print(course.name)
      } catch let jsonError {
        print("Error serializing json", jsonError)
        print("test")
      }
    }.resume()
    
  }
}

