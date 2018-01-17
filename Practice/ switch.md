# switch - case 구문 예제


## 시험 점수를 받아서 해당 점수의 등급을 반환해 주는 함수

```swift
// 시험 점수를 받아서 해당 점수의 등급을 반환해 주는 함수
func returnGradeforScore(inputScore: Int) -> String {
    var grade: String = ""
    switch inputScore {
    case 95...100: grade = "A+"
    case 90..<95: grade = "A"
    case 85..<90: grade = "B+"
    case 80..<85: grade = "B"
    case 75...80: grade = "C+"
    case 70..<75: grade = "C"
    case 65..<70: grade = "D+"
    case 60..<65: grade = "D"
    case 0...60: grade = "F"
    default:
        grade = "There is out of range, re-input, please"
    }
    return grade
}

returnGradeforScore(inputScore: 97)
returnGradeforScore(inputScore: 78)
returnGradeforScore(inputScore: 204)
```

## Grade 받아서 Point로 변환해 주는 함수
```swift
// Point = 4.5 4.0 3.5 3.0...
func returnToPointOfGrade(input grade: String) -> Double{
    var point: Double = 0.0
    switch grade {
    case "A+":
        point = 4.5
    case "A":
        point = 4.0
    case "B+":
        point = 3.5
    case "B":
        point = 3.0
    case "C+":
        point = 2.5
    case "C":
        point = 2.0
    case "D+":
        point = 1.5
    case "D":
        point = 1.0
    case "F":
        point = 0.0

    default:
        point = 0.0
    }

    return point
}

returnToPointOfGrade(input: "A+")
```

## 함수 만들기 실습!

```swift
func volume(height: Double, horizontal: Double = 0, vertical: Double = 0, radian: Double = 0)-> Double {
    var volume: Double = 0
    let tupleValue = (height, horizontal, vertical, radian)

    switch tupleValue {
    case (let h, let ho, 0, 0):
        volume = h * ho * ho
    case (let h, let ho, let vertical, 0):
        volume = h * ho * vertical
    case (let h, 0, 0, let radi):
        volume = 3.141592 * radi * radi * h
    default:
        volume = 0
    }
    return volume
}

volume(height: 10, horizontal: 10)
```

## 월을 입력받아 해당월의 이름을 반환해주는 함수
> (ex: 1 >>> "Jan", 12 >>> "Dec", 13 >> "Error")

```swift
func monthFromNumber(of month: Int) -> String {
    let inputMonth: Int = month
    var monthName: String
    switch inputMonth {
    case 1: monthName = "Jan"
    case 2: monthName = "Feb"
    case 3: monthName = "Mar"
    case 4: monthName = "Apr"
    case 5: monthName = "May"
    case 6: monthName = "Jun"
    case 7: monthName = "Jul"
    case 8: monthName = "Aug"
    case 9: monthName = "Sep"
    case 10: monthName = "Oct"
    case 11: monthName = "Nov"
    case 12: monthName = "Dec"
        default:
        monthName = "Error"
    }
    
    return monthName
}

monthFromNumber(of: 3)
monthFromNumber(of: 14)
```

## 년/월을 입력받아 해당 마지막 날을 반환 해주는 함수(윤년 고려)

``` swift
func returnLastDay(Year year: Int,Month month: Int) -> Int {
    let inputYear: Int = year
    let inputMonth: Int = month
    let isLeapYear: Bool
    let lastDay: Int
    
    isLeapYear = leapYearCalc(of: inputYear) // 윤년 계산
    
    if isLeapYear == true && month == 2 {
        lastDay = 29
    } else {
        switch inputMonth {
        case 1:
            lastDay = 31
        case 2:
            lastDay = 28
        case 3, 5, 7, 8, 10, 12:
            lastDay = 31
        case 4, 6, 9, 11:
            lastDay = 30
        default:
            lastDay = 0
        }
    }
    return lastDay
}

func leapYearCalc(of year: Int) -> Bool {
    let inputYear: Int = year
    let isLeapYear: Bool
    
    if inputYear % 4 == 0 && inputYear % 100 != 0 || inputYear % 400 == 0 {
        isLeapYear = true
    } else {
        isLeapYear = false
    }
    
    return isLeapYear
}

// 함수 실행 및 Test
returnLastDay(Year: 2000, Month: 2)
returnLastDay(Year: 2018, Month: 1)
returnLastDay(Year: 2018, Month: 4)
returnLastDay(Year: 2018, Month: 2)
```

## 시험점수를 입력받아 대학교grade로 나눠서 반환해주는 함수 
> (ex:95 >>> "A+" /// 80 >>> "B")

```swift
func gradeFromScore(of score: Int) -> String {6
    let inputScore: Int = score
    var grade: String

    switch inputScore {
    case 95 ... 100: grade = "A+"
    case 90 ..< 95: grade = "A0"
    case 85 ..< 90: grade = "B+"
    case 80 ..< 85: grade = "B0"
    case 75 ..< 80: grade = "C+"
    case 70 ..< 75: grade = "C0"
    case 65 ..< 70: grade = "D+"
    case 60 ..< 65: grade = "D0"
    case 0 ..< 60: grade = "F"
    default: grade = "Error"
    }
    
    return grade
}

// 시험점수 함수 Test
gradeFromScore(of: 97)
gradeFromScore(of: 82)
gradeFromScore(of: 400)
gradeFromScore(of: -70)
```

## 도형 부피 구하기 함수

```swift
let PI: Double = 3.141592   // PI, 원주율
func volume(width: Double, length: Double = 0, height: Double = 0, radian: Double = 0) -> Double {
    let compareData = (width, length, height, radian)
    var volume: Double = 0.0
    
    switch compareData {
    case (let width, 0, 0, 0):
        volume = width * width * width
    case (let width, let length, let height, 0):
        volume = width * length * height
    case (0, 0, let height, let radian):
        volume = PI * radian * radian * height
    case (0, 0, 0, let radian):
        volume = PI * radian * radian * radian * 4 / 3
    case (0, 0, let height, let radian):
        volume = PI * radian * radian * height / 3
    default:
        volume = 0
    }
    return volume
}

volume(width: 10, length: 10)
volume(width: 3, length: 40, height: 20)
volume(width: 10, length: 0, height: 20, radian: 10)
```

## 도형 넓이 구하기 함수
```swift
func calculatedArea(length: Double, width: Double , radian: Double) -> Double {
    let area: Double
    let compareData = (length, width, radian)
    
    switch compareData {
    case (let length, let width , 0):
        area = length * width
    case (let length, 0, 0):
        area = length * length
    case (0, 0, let radian):
        area = 3.14 * radian * radian
    default:
        area = 0
    }
    return area
}

func area(width: Double, height: Double, radian: Double) -> Double {
    let compareData = (width, height, radian)
    var area: Double = 0.0
    
    switch compareData {
    case (let length, 0, 0):
        area = length * length
    case (let width, let height, 0):
        area = width * height
    case (0, 0, let radian):
        area = 3.14 * radian * radian
    default:
        area = 0
    }
    return area
}

area(width: 4, height: 0, radian: 0)
area(width: 3, height: 4, radian: 0)
area(width: 0, height: 3, radian: 0)
area(width: 0, height: 0, radian: 5)
```