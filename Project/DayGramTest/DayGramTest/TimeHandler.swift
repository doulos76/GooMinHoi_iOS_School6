//
//  TimeHandler.swift
//  DayGramTest
//
//  Created by dave on 18/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation

/// 현재 시간을 불러오기 위한 메서드
/// "3:56 pm" 형식으로 반환
/// - Returns: 현재 시간 값 반환(String type)
func getCurrentTime() -> String {
  let currentTime = Date()
  let timeFormatter = DateFormatter()
  timeFormatter.locale = Locale(identifier: "en_US_POSIX")
  timeFormatter.dateFormat = "h:mm a"
  timeFormatter.amSymbol = "am"
  timeFormatter.pmSymbol = "pm"
  let stringTime = timeFormatter.string(from: currentTime)
  return stringTime
}


/// 현재 날짜를 불러오는 메서드
/// 예) Wendsday, April 18, 2018
/// - Returns: 현재 날짜로 변환
func getCurrentDate() -> String {
  let currentDate = Date()
  let dateFormatter = DateFormatter()
  dateFormatter.dateStyle = .full
  let stringDate = dateFormatter.string(from: currentDate)
  return stringDate
}
