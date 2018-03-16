//
//  CustomClass5.swift
//  Serialization
//
//  Created by 구민회 on 15/03/2018.
//  Copyright © 2018 Giftbot. All rights reserved.
//

import Foundation

class CustomClass5: NSObject, NSCoding {
  let name: String
  let job: String
  
  init(name: String, job: String) {
    self.name = name
    self.job = job
  }
  
  required init(coder aDecoder: NSCoder) {
    name = aDecoder.decodeObject(forKey: "name") as! String
    job = aDecoder.decodeObject(forKey: "job") as! String
  }
  
  func encode(with aCoder: NSCoder) {
    aCoder.encode(name, forKey: "name")
    aCoder.encode(job, forKey: "job")
  }
  
  override var description: String {
    return name + " : " + job
  }
}
