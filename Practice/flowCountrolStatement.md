# 흐름 제어
>   조건문 : 프로그래밍시 특정 조건에서 코드를 실행하거나, 하지 말아야 할 상황이 생길 때 사용

>   반복문 : 특정 명령어를 반복해서 실행해야 할 때 사용

>   스위프트의 흐름 제어 구문에서는 소괄호(())를 대부분 생략할 수 있음.

>   중괄호는 생략할 수 없음 

## 조건문
> 함수 내부에서 실행되는 선택문
> 
> 특정 조건에 따라 선택적으로 코드를 실행시킴
> 
> 대표적인 조건문 : if-else 문과 switch 문
> 
> 보편적으로 if-else를 많이 사용하나, swift에서는 switch-case가 강화되었음
>

### if-else 문
> 조건이 참일 경우 if문 대괄호 안의 코드가 실행됨
> 
> 만약 조건이 거짓인 경우 else 문 대괄호 안의 코드가 실행됨

```swift
if 조건 {
	//조건이 만족되면 실행
} else {
	//조건이 만족되지 않을 때 실행
}

```
__조건값은 참, 거짓을 나타내는 Bool값으로 표현__

#### else if문
> 추가 조건 방법으로 반복해서 추가 할 수 있음

```swift
if 조건1 {
	//조건1이 만족되면 실행
} else if 조건2 {
	//조건1이 만족되지 않고, 조건2가 만족 될 때 실행
} else {
	// 조건들 모두 만족되지 않을 때 실행
}
```
> __조건2는 조건1이 거짓일 때 실행__

> 마지막 else는 생략할 수 있음

#### 조건 만들기

> 비교 연산자를 통해 조건의 결과가 bool값으로 나와야 함.
> 
> 논리 연산자로 다양한 조건의 조합이 가능함.

### 연산자
#### 산술연산자
- 수학에서 사용하는 연산자와 같음

```
+ : 더하기
- : 빼기
* : 곱하기
/ : 나누기
% : 나머지

```

#### 비교연산자

```
== : 같다				A == B
>= : 크거나 같다		   A >= B
<= : 작거나 같다		   A <= B
>  : 크다			    A > B
<  : 작다			    A < B
!= : 같지 않다		   A != B

```

#### 논리 연산자

```
&& : AND  -> A && B --> A조건이 참이고, B조건이 참이면 참이다.
|| : OR   -> A || B ==> A조건이나,B조건 둘중에 하나가 참이면 참이다.
!  : NOT  -> !A     ==> A 조건의 반대
```
#### 추가 연산자
##### 복합 연산자
```
연산자		예제			 설명
-------------------------------------
+=		 a += 1			a에 값을 더하기
-=		 b -= 2			b에 값을 빼기
```
> *, /, % 도 가능

##### 범위 연산자
```
연산자			예제			설명
-------------------------------------------
a...b		 3...10		   a~b까지의 숫자
a..<b		 0..<10		   a~b까지 숫자중 b는 포함안함
```
> 1... : 1이상의 모든 수
> 
> 1.2 ..< 1.5  --> 1.2, 1,3, 1,4 (o),  1.12 (x)

##### identity 연산자
```
연산자		  예제						설명
--------------------------------------------------------------------------
===		 	person2 === person1		person1과 person2는 같은 인스턴스를 참조하고 있다.
!==		 	person2 !== person1		person1과 person2는 다른 인스턴스를 참조하고 있다.

```
> 객체가 같은지 확인, reference가 같은지 확인

#### 삼항연산자
```
question? answer1 : answer2
-> question이 참이면 answer1 실행, 거짓이면 answer2 실행
```
```swift
let age = 20
var result: String = age > 19 ? "성년" : "미성년"
```

### 조건의 예
```swift
func printGeneration(age:Int)
 {
	if (age >= 30) { 
		print(“30대 이상")
    } else if(age >= 20) {
		print("20대") 
	} else {
	 	print("미성년자")
	} 
}

// 실행결과
printGeneration(10);
>> 미성년자
printGeneration(40);
>> 30대 이상
printGeneration(20);
>> 20대

```
#### 조건문 예시
```swift
//예시 1
func check(name compareName: String) {
	if compareName == "주영민" {
		print(“주영민 입니다.”) 
	} else {
		print("주영민이 아닙니다")
	} 
}

// 예시 2
func isEven(number:Int) -> Bool
{
	if(number%2 == 0)
	{
		//짝수 
		return true
	} else {
		//홀수
		return false
	} 
}

```
#### 조건의 조합
1. or조합(||): 조건들 중 한개만 참이어도 전체 조건이 참임
2. and조합(&&) : 조건들 모두 참이여만 전체 조건이 참임
3. not(!) : 조건 결과의 반대값



### switch 구문
* 패턴 비교문
* 가장 첫번째 매칭되는 패턴의 구문이 실행됨

## switch 문법
* Swift에서 switch문은 break문이 필요 없음 (C와 다른점)

```swift
switch some value to consider
{ case value 1: 	respond to value 1 case value 2, 	  value 3: 	respond to value 2 or 3 default:  
	otherwise, do something else
}

```
__"default: " - 항상 있어야 된다! 위의 case가 실행되지 않을 때 사용함__


* 각 조건의 상태는 case 키워드를 통해 나타낼수 있음.
* 각 case 상태 끝에는 콜론( : )을 작성해서 매칭 패턴을 종료.
* 여러개의 case가 필요하면 콤마( , )를 통해 상태를 추가 할수 있음.
* 각 case는 분기로 실행되며 매칭된 해당 case문이 종료되면 switch 문을 종료시킴.
* 각 case의 상태는 switch 문의 value값에 매칭된 지점을 결정함, 모든 value에 대해 매칭 되어야 함. 만약 매칭되는 값이 없다면 default 키워드를 통해 기본 매칭값을 설정함, default키워드는 마지막에 배치됨.

### swiftch 예제
```swift
func sampleSwitch(someCharacter:Character)
{
    switch someCharacter {
    case "a":
        print("The first letter of the alphabet")
    case "z":
        print("The last letter of the alphabet")
    default:
        print("Some other character")
    }
}

```
### Interval Matching
* switch문의 상태는 단순 value 매칭을 넘어 좀더 다양한 패턴을 통해 매칭이 가능
* interval matching은 범위 연산자를 통해 해당 범위에 해당하는 value를 매칭 시킬 수 있음

#### interval matching example
```switch
func interSwitch(count:Int)
 {
     let countedThings = "moons orbiting Saturn"
     let naturalCount: String
     switch count {
     case 0:
         naturalCount = "no"
     case 1..<5:
         naturalCount = "a few"
     case 5..<12:
         naturalCount = "several"
     case 12..<100:
         naturalCount = "dozens of"
     case 100..<1000:
         naturalCount = "hundreds of"
     default:
         naturalCount = "many"
     }
     print("There are \(naturalCount) \(countedThings).")
 }
```
### Tuple Matching
* 튜플을 사용해서 여러개의 value를 동시에 확인 할 수 있음
* 사용 가능한 모든 값에 대한 매칭은 와일드 카드(_)를 통해 매칭 가능

#### Tuple example

```swift

     func getPoint(somePoint:(Int,Int))
     {
         switch somePoint {
         case (0, 0):
             print("\(somePoint) is at the origin")
         case (_, 0):
             print("\(somePoint) is on the x-axis")
         case (0, _):
             print("\(somePoint) is on the y-axis")
         case (-2...2, -2...2):
             print("\(somePoint) is inside the box")
         default:
             print("\(somePoint) is outside of the box")
         }
}
```
> _ : wildcard 모든 조건이 다 됨

#### 값 바인딩
* case 내부에서 사용되는 임시 값으로 매칭 시킬 수 있음

#### 값 바인딩 예제
```swift
   func getPoint(somePoint:(Int,Int))
     {
         switch somePoint {
         case (0, 0):
             print("\(somePoint) is at the origin")
         case (let x, 0):
             print("on the x-axis with an x value of \(x)")
         case (0, let y):
             print("on the y-axis with an y value of \(y)")
         case (-2...2, -2...2):
             print("\(somePoint) is inside the box")
         default:
             print("\(somePoint) is outside of the box")
         }
}
```
### where 문
* where 문의 추가로 추가 조건을 넣을 수 있음

#### where 문 예제

```swift
func wherePoint(point:(int,Int))
{
    switch point {
    case let (x, y) where x == y:
        print("(\(x), \(y)) is on the line x == y")
    case let (x, y) where x == -y:
        print("(\(x), \(y)) is on the line x == -y")
    case let (x, y):
        print("(\(x), \(y)) is just some arbitrary point")
    }
}
```

## 반복문
### for - in 구문
### while 구문
###  repeat-while 구문
## 구문 이름표