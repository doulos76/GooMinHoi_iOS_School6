//
//  DataResponse.swift
//  MyCollectionView2
//
//  Created by dave on 09/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation

struct DataResponse<Value> {
  
  let data: Data?
  let result: Result<Value>
  
  var error: Error? {
    return result.error
  }
  
  var value: Value? {
    return result.value
  }
}

enum Result<Value> {
  case success(Value)
  case failure(Error)
  
  var value: Value? {
    switch self {
    case .success(let value):
      return value
    case .failure:
      return nil
    }
  }
  
  var error: Error? {
    switch self {
    case .success:
      return nil
    case .failure(let error):
      return error
    }
  }
}
