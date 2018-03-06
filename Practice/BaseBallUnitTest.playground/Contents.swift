//: Playground - noun: a place where people can play

import UIKit

let answerList: [Int] = [3, 7, 1]
let correctAnswerList: [Int] = [1, 2, 3]
var strikeCount: Int = 0
var ballCount: Int = 0
var outCount: Int = 0

for index in 0..<3 {
    if answerList[index] == correctAnswerList[index] {
        strikeCount += 1
    } else if correctAnswerList.contains(answerList[index]){
        ballCount += 1
    } else {
        outCount += 1
    }
}

print(strikeCount, ballCount, outCount)

