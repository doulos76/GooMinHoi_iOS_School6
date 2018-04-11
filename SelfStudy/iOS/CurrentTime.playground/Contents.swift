//: Playground - noun: a place where people can play

import UIKit


//let date = Date()
//let dateFormatter = DateFormatter()
//dateFormatter.dateFormat = "yyyy-MM-dd"
//let stringDate = dateFormatter.string(from: date)
//
//print(stringDate)

let now = Date()
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
currDate.text = dateFormatter.stringFromDate(now)

