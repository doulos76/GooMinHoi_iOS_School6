//: [Previous](@previous)
/*:
 **function** - named code block// MARK:
 **closure** - unnamed code block (lambdas)
 */
//: ## Basic Closure
print("\n-------------- [ Basic ] --------------\n")
let simpleClosure = {
  print("This is SimpleClosure!!")
}
simpleClosure()

let closureParameter = { (str: String) -> Int in
  return str.count
}
let  count = closureParameter("Swift")
print(count)

/*:
 ## Inline closure
 */
print("\n------------------- [ Inline ] ----------------------\n")
func printSwift() {
  print("Swift")
}
let arg = {
  print("Inline Closure!!")
}
func closureParamFunction(closure: () -> Void) {
  closure()
}
closureParamFunction(closure: printSwift)
closureParamFunction(closure: arg)
closureParamFunction(closure: {
  print("explict closure parameter name")
})

/*:
 ## Trailing Closure
 */
print("\n------------------- [ Trailing ] ----------------------\n")
closureParamFunction() {
  print("Trailing")
}

closureParamFunction {
  print("Trailing")
}








//: [Next](@next)
