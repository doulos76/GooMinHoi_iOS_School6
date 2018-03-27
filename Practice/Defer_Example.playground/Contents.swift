//: Playground - noun: a place where people can play

//: ## Defer Statement

/*
Defer Statement
 A defer statement is used for executing code just before transferring program control outside of the scope that the defer statement appears in
 ```
 defer {
 
  // statements
 
 }
 ```
*/
import UIKit

func f() {
  defer { print("first")}
  defer { print("second")}
  defer { print("third")}
}

f()

