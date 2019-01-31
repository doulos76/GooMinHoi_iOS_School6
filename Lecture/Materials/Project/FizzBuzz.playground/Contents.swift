

// switch

func fizzbuzz1(_ num: Int) -> String {
  switch (num % 3, num % 5) {
  case (0, 0): return "FizzBuzz"
  case (0, _): return "Fizz"
  case (_, 0): return "Buzz"
  default: return "\(num)"
  }
}

// if - else if

func fizzbuzz2(_ num: Int) -> String {
  if num % 15 == 0 { return "FizzBuzz" }
  else if num % 3 == 0 { return "Fizz" }
  else if num % 5 == 0 { return "Buzz" }
  else { return "\(num)" }
}

// if

func fizzbuzz3(_ num: Int) -> String {
  var text = ""
  if num % 3 == 0 { text = "Fizz" }
  if num % 5 == 0 { text += "Buzz" }
  return text.isEmpty ? "\(num)" : text
}


print((1...100).map(fizzbuzz1(_:)))
