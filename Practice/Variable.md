#변수

변수는 데이터를 관라 하는 공간으로서 데이터를 저장하고 불러와서 사용할 수 있음. 변수 선언을 통해 메모닐에 특정 공간을 할당 할 수 있음. 그 공간에 데이터를 할당하고 블러와서 사용할 수 있음. 데이터를 관리하기 위해 변수 이름을 지정함. 타입을 지정하여서 데이터가 어떤 형태인지를 미리 알려줌. Swift에서는 Type 추론을 통해 변수선언시 타입을 지정하지 않더라도 데이터(값)을 통해 추론이 가능함


##문법

변수의 문법은 크게 __'키워드' + '변수이름' + '변수타입'__ 세가지로 이뤄져 있음.

만든 변수에 __대입연산자(=)__를 통해 변수타입과 같은 값을 넣어서 저장시킬수 있음.

이렇게 작성된 변수의 life cycle내에서 언제든 꺼내서 사용할 수 있으며, 새로운 값을 넣을 수 있음.

###선언

```swift
var valueName: Type
```

###할당

```swift
valueName = value
```

###선언 + 할당

```swift
var valueName: Type = value
var valueName = value // <---  타입추론
```

##키워드

변수를 선언시 사용하는 키워드는 __var / let__ 두 가지가 있음
var는 값을 변경할수 있는 변수로써 사용
let은 값을 변경할 수 없는 상수로써 사용

```swift
var <<< 변수 : 값 할당, 재할당 가능
let <<< 상수 : 한번 값 할당 후 변경 불가
```

##변수이름

변수이름은 변수안에 들어갈 데이터를 나타내는 이름을 작성하며 변수의 값을 불러오고 다른 값을 할당하기 위해 사용 됨

변수 이름은 loswerCamelCase를 사용함. 변수를 만들 때 띄어쓰기조차 문법으로 인식됨. 긴 이름을 작성할 때에도 단어와 단어 사이에 띄어쓰기가 들어가면 안됨. 이름을 읽는데 어려움이 있음.

```swift
// 나쁜 예시
var myfriendname: String = "아이언맨"

// 권장 예시 -  lowercamelCase 사용
var myFriendName: String = "아이언맨"
```

CamelCase : 각 단어의 첫 글자를 대문자로 표현하는 것
UpperCamelCase : 맨 첫글자를 대문자로 쓰는 것 >>> 프로젝트 이름, 클래스 등에서 사용
loserCamelCase: 첫글자만 소문자로 쓰는 것 >>> 변수, 함수명 등에 사용

##대입 연산자

```
변수이름 = value
```

대입 연산자(=)는 vlaue를 변수에 할당하는 역할을 함.

선언과 동시에 값을 할 수 있음

```swift
var name: String = "WingMan"
```

선언 후 값을 할당도 가능

```swift
var name: String
name = "WingMan"
```


##타입

변수타입에는 크게 ValueType과 ReferenceType으로 나눠짐.

| Type     | Type Name     |  의미    |	  예시                |
|----------|:-------------:|:-------:|-----------------------|
| Int      |인트           |정수형 데이터| 1, 2, 3, 100, ..       |
| Double   |더블           |실수형 데이터|1.1, 103.234, 0.111     |
| String   |스트링          |문자열     |"문자", "swift"          |
| Bool     |불             |논리 데이터 | true, false            |


변수 성언시 타입을 지정하여 해당 변수가 어떤 데이터를 받아들이는지 표시해 줌

```swift
var name: Stirng = "WingMan"
var age: Int = 100
var height: Double = 180.3
var isdeveloper = true
```

지정한 type과 다른 type의 값을 할당하면 compile error가 남.

```swift
var name: String = "WingMan"
var age: Int = 100

name = 30 		// compile error
age = "older" 	// compile error
```

값을 지정하지 않고 type도 지정하지 않으면 error가 남

##변수 사용

변수를 사욯할때는 변수 이름을 호출하여 사용할 수 있음

```swift
var number1: Int = 100
var number2: Int = number 1	// 여기에서 number1는 변수의 사용이며 현재 들어 있는 값(100)으로 여겨짐.
```

변수의 값을 사용하여 연산도 가능

```swift
var number1: Int = 100
var number2L Int = number1
var sum: Int = number1 + number2
```

##Example

다양한 예제를 통해 벼수를 확인해 봄

```swift
var myName: String = "WingMan" 	// 선언 + 문자열 값 할당
myName = "내 이름은 WingMan입니다."	// 값 재설정

let userID: String = "WingMan"	// 상수 선언 값 할당, 변경 불가능
let age = 20 	// 타입 추론을 통한 값 할당

/////////
var biggerNum: Double = 40.5
var smallNum: Double = 80.2

var tempNum: Double = biggerNum
biggerNum = smallNum
smallNum = tempNum

/////////
let koreanScore: Int = 100
let englishScore: Int = 80
var totlalScore = koreanScore + englishScore    // 변수 값 사용 후 연산
```

##추가 타입

1. tuple Type : 타입 묶음
	* 정해지지 않은 데이터 타입의 묶음
	* 소괄호()안에 타입을 묶음으로 새로운 튜플타입을 만들 수 있음.  ex) (Int, Int) // (Stirng, Int, String)
	* 각 type마다 이름을 지정해 줄수도 있음.  ex) (name: Stirng, age: Int)

2. Any: 모든 type의 상위 타입으로 모든 타입은 Any라고 말할수 있음


##변수 타입 변환

프로그래밍을 하다가 서로 다른 타입의 값을 같이 사용할 경우가 생길 때.

```swift
var intNum = 5
var doubleNum = 10.45
var sum = intNum + doubleNum 	//
```
compiler는 다른 타입의 연산을 허용하지 않음.
정확히 같은 타입의 데이터끼라만 처리가 가능
개발자는 연산을 위해 하나의 타입으로 통일 시켜줘야 함.
이때 임시로 타입을 변환시키는 Casting을 사용하는데, 임시 형변환이라고 얘기함.
Reference Type의 경우는 DownCasting이란것도 사용하게 됨.

형변환을 하는 방법으로는 변환하려는 타입이름을 소괄호()로 감싸주면 됨

```swift
var intNum = 5
var doubleNum = 10.45
var sum = Double(intNum) + doubleNum // Double과 Double의 합이기 때문에 sum의 타입은 Double임.
```
형변환을 하면서 값이 변환하기도 하는데 Double이 Int로 벼환되면 소수점이 제거됨.

```swift
var intNum = 5
var doubleNum = 10.45
var sum: Int = intNum + Int(doubleNum) // Int(doubleNum)의 값은 10임.
```

##문자열(String)처리

문자열 처리하는 방법

1. 문자열 결합

	기호를 통해 문자열을 결할시킬 수 있음.
	
	```swift
	var mainStr: String = "주영민"
	var fullStr = "제 이름은 " + mainStr + "입니다."
	print(fullStr)	// 제 이름은 주영민입니다.
	```

2. 삽입
	
	Int타입 변수의 값을 문자열에 사용할 때.
	
	```swift
	var myAge = 30
	var introduce = "제 나이는 myAge 입니다."
	```
	
	여기서 myAge는 변수가 아닌 String의 일부로 인식되어 값이 아닌 "myAge"로 실행 하였음.
	
	```swift
	var myAge = 30
	var introduce = "제 나이는" + myAge + "입니다."
	```
	
	위 예제에선 문자열과 정수를 결합하므로 같은 타입이여야 한다는 rule에서 벗어났음.
	
	그래서 삽입이라는 기술 사용함.
	
	```swift
	var myAge = 30
	var introduce = "제 나이는 \(myAge)입니다."
	```
	
	괄호안에서는 연산도 가능함.
	
* 추가로  코딩시 갖춰야할 스타일 가이드

	<https://swift.org/documentation/api-design-guidelines/>
	