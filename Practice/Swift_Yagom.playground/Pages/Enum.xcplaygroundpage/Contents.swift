//: [Previous](@previous)

//:- ## Enum (열거형)

//열거형은 연관된 항목들을 묶어서 표현할 수 있는 타입
//
//배열, 딕셔너리와 다르게 프로그래머가 정의해준 값 외에는 추가/수정이 불가함. -> 정해진 값만 열거형에 속할 수 있음
//
//* Case
//- 제한된 선택지를 주고 싶을 때
//- 정해진 값 외에는 입력받고 싶지 않을 때
//- 예상된 입력 값이 한정되어 있을 때
//
//* Example
//- 무선통신방식: Wifi, Bluetooth, LTE, 3G, etc
//- 학생: 초등학생, 중학생, 고등학생, 대학생, 대학원생, 기타
//- 지역: 강원도, 경기도, 경상도, 전라도, 제주도, 충청도
//
//열거형은 각 항목이 원시값(Raw Value)이라는 형태로 (정수, 실수, 문자 타입 등) 실제 값을 가질 수도 있음.
//
//__연관값(Associated Value)__을 사용하여 다른 언어에서 공용체라고 불리는 값의 묶음도 구현할 수 있음.

// Code 4-14: School 열거형의 선언
enum School {
  case primary      // 유치원
  case elementary   // 초등
  case middle       // 중등
  case high         // 고등
  case college      // 대학
  case university   // 대학교
  case graduate     // 대학원
}

// Code 4-15: School 열거형의 선언
enum School0 {
  case primary, elementary, middle, high, college, university, graduate
}

// Code 4-16: School 열거형 변수의 생성 및 값 변경
var highestEducationLevel: School = School.university

// 위 코드와 같은 표현
var highestEducationLevel1: School = .university

// 같은 타입인 School 내부의 항목으로만 highesthighestEducationLevel의 값을 변경해 줄 수 있음
highestEducationLevel = .graduate

// Code 4-17: 열거형의 원시 값 지정과 사용
enum School1: String {
  case primary = "유치원"
  case elementary = "초등"
  case middle = "중등"
  case high = "고등"
  case college = "대학"
  case university = "대학교"
  case graduate = "대학원"
}

let highestEducationLevel2: School1 = School1.university
print("저의 최종학력은 \(highestEducationLevel2.rawValue) 졸업입니다.")
// prints >>> 저의 최종학력은 대학교 졸업입니다.

enum WeekDays: Character {
  case mon = "월", tue = "화", wed = "수", thu = "목", fri = "금", sat = "토", sun = "일"
}

let today: WeekDays = WeekDays.fri
print("오늘은 \(today.rawValue)요일입니다.")
// prints >>> 오늘은 금요일입니다.


indirect enum ArithmeticExpression {
  case number(Int)
  case addition(ArithmeticExpression, ArithmeticExpression)
  case multiplication(ArithmeticExpression, ArithmeticExpression)
}


let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)
let sum = ArithmeticExpression.addition(five, four)
let final = ArithmeticExpression.multiplication(sum, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
  switch expression {
  case .number(let value):
    return value
  case .addition(let left, let right):
    return evaluate(left) + evaluate(right)
  case .multiplication(let left, let right):
    return evaluate(left) * evaluate(right)
  }
}

let result: Int = evaluate(final)
print("(5 + 4) * 2 = \(result)")









//: [Next](@next)
