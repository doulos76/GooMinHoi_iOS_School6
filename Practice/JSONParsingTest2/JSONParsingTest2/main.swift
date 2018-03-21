//
//  main.swift
//  JSONParsingTest2
//
//  Created by 구민회 on 21/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import Foundation

let FullPath = "/Users/dave/Documents/GooMinHoi_iOS_School6/Practice/person.json"

//if let contents = try? String(contentsOfFile: FullPath) {
//  print(contents)
//}

if let data = try String(contentsOf: FullPath).data(using: .utf8) {
  let json = try! JSONSerialization.jsonObject(with: dat, options: []) as! [String: Any]
  print(json)
}


