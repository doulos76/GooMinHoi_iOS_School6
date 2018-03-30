//: Playground - noun: a place where people can play

import UIKit

//func factorial(input num: Int) -> Int {
//  var result: Int = 1
//  var n: Int = num
//  if  n >= 2 {
//    result = n * factorial(input: n-1 )
//    return result
//  } else if n == 0 || n == 1 {
//    return 1
//  }
//  return result
//}

//let result = factorial(input: 4)
//print(result)

//func factorial1(input num: Int) -> Int {
//  guard num > 1 else { return 1 }
//  return num * factorial1(input: num - 1 )
//}

//let result1 = factorial1(input: 5)
//print(result1)

// 피보나치 수열
// 0 1 2 3 4 5 6 7 8
// 0 0 1 1 2 3 5 8 13
//  -> n + (n+1)


func fibonacciNumbers(num: Int) -> Int {
  var result: Int = 0
  if num < 2 {
    result = num
  } else if num >= 2 {
    result  = fibonacciNumbers(num: num - 2) + fibonacciNumbers(num: num - 1)
  }
  return result
}

var resultOfFibonacciNumber = 0
for n in 0...10 {
  resultOfFibonacciNumber = fibonacciNumbers(num: n)
  print(resultOfFibonacciNumber)
}


func fibonacci(n: UInt) -> UInt {
  guard n > 1 else { return n }
  return fibonacci(n: n - 2) + fibonacci(n: n - 1)
}

