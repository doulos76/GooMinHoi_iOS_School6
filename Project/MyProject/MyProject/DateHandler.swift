//
//  DateHandler.swift
//  MyProject
//
//  Created by dave on 16/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation

func getCurrentTime() -> String {
  let time = Date()
  let timeFormatter = DateFormatter()
  timeFormatter.locale = Locale(identifier: "en_US_POSIX")
  timeFormatter.dateFormat = "h:mm a"
  timeFormatter.amSymbol = "am"
  timeFormatter.pmSymbol = "pm"
  let stringTime = timeFormatter.string(from: time)
  return stringTime
}

