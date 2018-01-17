#function, method 관련 문법, 예제 및 실습

## 함수
함수 대부분은 작업의 가장 작은 단위이자 하나의 작은 프로그램.
프로그램을 이루는 주된 요소. swift에서는 일급 객체 이기 때문에 하나의 값으로도 사용할 수 있음.

함수와 메서드 : 기본적으로 같음. 함수가 위치하거나 사용되는 범위 등에 따라 호칭이 달라짐.

 - 메서드(method) : 구조체, 클래스, 열거형 등 특정 타입에 연관 되어 사용하는 함수
 - 함수(function) : 모듈 전에에서 전역적으로 사용할 수 있는 함수

### 함수의 정의와 호출
 ```swift
// 기본 형태
 func funcName(parameter...) -> returnType {
	 	action_statement
	 	return returnVlaue
	}
	

	
 // 기본 형태와 함수 정의의 내용
 
 //정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func halfOfInteger(input inputNum: Int) -> Double {
	let result: Double = Double(inputNum) / 2
	return result
}
 
 ```

* 기본 형태는 타 프로그래밍 언어와 비슷함.
* 파라메터나 전달인자는 경우에 따라 생략 및 추가 가능 

---

### 함수 구현 예시
각종 기능에 대한 함수 구현 예시
---
#### 기초
* __이름(문자열)을 받아서 이름을 출력하는 함수__

```swift
//1-a 이름(문자열)을 받아서 이름을 출력하는 함수
func printName(name: String) {
	print("이름: \(name)")
}	
```

* __1-a 이름(문자열)을 받아서 이름을 출력하는 함수__

```swift
//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func printAge(age: Int) {
    print("나이: \(age)")
}

```


* __1-b 나이*(정수)를 받아서 나이를 출력하는 함수__

```swift
//1-b 나이*(정수)를 받아서 나이를 출력하는 함수
func printAge(age: Int) {
    print("나이: \(age)")
}

```


* __1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)__

```swift
//1-c.이름과 주소를 입력받아 자기소개글을 프린트 하는 함수(자기소개글은 자유)
func printProfile(name: String, address: String) {
    print("안녕하십니까? 반갑습니다.")
    print("저는 \(name)입니다.")
    print("저는 \(address)에 거주하고 있습니다.")
    print("만나게 되어 반갑습니다.")
}
```


* __정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수__

```swift
//정수를 하나 입력받아서 2로 나눈 값을 반환해주는 함수
func halfOfInteger(input inputNum: Int) -> Double {
    let result: Double = Double(inputNum) / 2
    return result
}
```


* __정수를 하나 입력받아서 제곱을 반환해주는 함수__

```swift
//정수를 하나 입력받아서 제곱을 반환해주는 함수
func square(of inputNum: Int) -> Int {
    let result = inputNum * inputNum
    return result
}
```

#### 응용 - 다중 입력, 변환

* __2-a. 두개의 정수를 입력받아 두수의 합을 반환해주는 함수__

```swift
func sum(input1 num1: Int, input2 num2: Int) -> Int {
    let sum: Int = num1 + num2
    return sum
}
```

* __2-b. 두개의 정수를 입력받아 두수의 차를 반환해주는 함수__

```swift
func sub(input1 num1: Int, input2 num2: Int) -> Int {
//    if num1 > num2 {
//       return num1 - num2
//    } else if num1 == num2 {
//        return 0
//    } else {
//        return num2 - num1
//    }
    let sub: Int = num1 - num2
    return sub
}
```

* __2-c. 두개의 정수를 입력받아 두수의 곱을 반환해주는 함수__

```
func mul(input1 num1: Int, input2 num2: Int) -> Int {
    let mul: Int = num1 * num2
    return mul
}
```

* __2-d. 두개의 정수를 입력받아 두수의 나누셈을 반환해주는 함수__

```
func div(input1 num1: Int, input2 num2: Int) -> Double {
    let div: Double = Double(num1) / Double(num2)
    return div
}
```

#### 응용

* __부모님과 내 나이를 입력 후 그 나이차를 프린드 하는 함수 (ex: "어머니의 나이는 40세이고 내 나이는 20살이므로 우리의 나이차이는 20살 입니다.)__

```swift
func diffenenceOfParentsAndMe(Parent parentsAge:Int, I myAge:Int) -> Int {
    let difference: Int = parentsAge - myAge
    return difference
}
```

* __시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수__

```swift
func averageScores(subject1: Int, subject2: Int, subject3: Int, subject4: Int) -> Double {
    let average: Double = Double(subject1 + subject2 + subject3 + subject4) / 4
    return average
}
```
####캐스팅 - 형변환

* __정수를 하나 입력받아서 실수로 변환 후 반환해주는 함수__

```swift
func converterOfIntegerToRealNumber(intNum: Int) -> Double {
    let result: Double = Double(intNum)
    return result
}

converterOfIntegerToRealNumber(intNum: 34)
type(of:converterOfIntegerToRealNumber(intNum: 34))
```

* __정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)__

```swift
func sumOfTwoNumbers(_ num1: Int, _ num2: Int) -> Int {
    let sum: Int = num1 + num2
    return sum
}
sumOfTwoNumbers(1, 3)
```

* __실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수__

```swift
func convertionOfIntToDouble(doubleNumber: Double) -> Int {
    let doubleNum: Double = doubleNumber
    let intNum: Int = Int(doubleNum)
    let difference = doubleNum - Double(intNum)
    if difference >= 0.5 {
        return Int(doubleNum + 1)
    } else {
        return Int(doubleNum)
    }
}

convertionOfIntToDouble(doubleNumber: 341.5)
convertionOfIntToDouble(doubleNumber: 341.3)


//func converterOfIntegerTodoubleNumber(Double doubleNumber: Double) -> Int {
//    var result = doubleNumber
//    result = Double(round(1 * doubleNumber) / 1)
//    return Int(result)
//}
//// modulus %
//converterOfIntegerTodoubleNumber(Double: 34.7)
//converterOfIntegerTodoubleNumber(Double: 23.3)
```

* __시험점수 여러개를 입력받아서(4개이상) 평균을 반환해주는 함수__

```swift
func averageOf(korean: Int, english: Int, math: Int, science: Int) -> Double
{
    let totalScroe: Int = korean + english + math + science
    let avearge: Double = Double(totalScroe) / 4
    return avearge
}
```

* __정수를 두개를 입력받아 두수를 합친수를 출력하는 함수 (ex: 3,4 입력시 >>> 34 /// 1,0 입력시 >>> 10)__

```swift
func combineInt(num1: Int, num2: Int) -> String
{
    return String(num1) + String(num2)
}
```

* __실수를 하나 입력받아서 소수점 첫번재 자리에서 반올림 후 정수를 반환해주는 함수__

```swift
func roundup(number: Double) -> Int {
    let addhalfnum = number + 0.5
    return Int(addhalfnum)
}
```
---
#### 단위 변환 Tool Box 구현


* __inch를 cm로 변환하는 함수__

```swift
// Function of inch to cm converter
func inchToCm(input inch: Double) -> Double {
    let result: Double = inch * 2.54
    return result
}
```

* __cm를 inch로 변환하는 함수__


```swift
// Func of cm to inch converter
func cmToInch(input cm: Double) -> Double {
    let result: Double = cm / 2.54
    return result
}
```

* __'평'을 m^2로 변환하는 함수__


```swift
//m2 to 평, 평 to m2
//평 to m2
func pyungToMeterSquare(input pyung: Double) -> Double {
    let result: Double = pyung * 3.3058
    return result
}
```

* __m^2를 '평'으로 변환하는 함수__


```swift
//m2 to 평
func meterSquareToPyung(input m2: Double) -> Double {
    let result: Double = m2 / 3.3058
    return result
}
```

* __화씨를 섭씨로 변환하는 함수__


```swift
//화씨 to 섭씨, 섭씨 to 화씨
// 화씨 to 섭씨
func fahrenheitToCelsius(input fahrenheit: Double) -> Double {
    let result: Double = (fahrenheit - 32) * 5 / 9
    return result
}
```

* __섭씨를 화씨로 변환하는 함수__


```swift
// 섭씨 to 화씨
func celsiusToFahrenheit(input celsius: Double) -> Double {
    let result: Double = celsius * 9 / 5 + 32
    return result
}
```

* __KB_(kilo bytes)_를 MB_(Mega bytes)_로 변환하는 함수__


```swift
//데이터량(KB to MB, MB to GM)
// KB to MB
func kiloBytesToMegaBytes(input kiloBytes: Double) -> (Double, Double) {
    let resultInDec: Double = kiloBytes / 1000
    let resultInBin: Double = kiloBytes * 0.0009765625
    return (resultInDec, resultInBin)
}
```

* __MB_(mega bytes)_를 KB_(kilo bytes)_로 변환하는 함수__


```swift
// MB to KB
func megaBytesToKiloBytes(input megaBytes: Double) -> Double {
    let result: Double = megaBytes * 1000
    return result
}
```

* __시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경하는 함수__


```swift
// 시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경
// ex) 11320 >> 4400초
// 시간 to 초
func timeToSec(input_6_number time: Int) -> Int {
    let hours = time / 3600
    let mins = hours / 60
    let secs = mins % 60
    
    let result: Int = hours * 3600 + mins * 60 + secs
    return result
}

timeToSec(input_6_number: 11320)
```

* __시간(hhmmss)을 받으면 초단위로 변경, 초단위를 시간으로 변경하는 함수 - 다른 구현 방법__


```swift
func changeToSecond(from time: Int) -> Int {
    var remainTime: Int = time
    let second: Int  = remainTime % 100
    remainTime = remainTime / 100
    let min: Int = remainTime / 100
    remainTime = remainTime / 100
    let hour: Int = remainTime % 100
    
    return (hour * 3600) + (min * 60) + second
    
}
```

