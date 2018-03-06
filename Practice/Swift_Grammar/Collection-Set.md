## Set ##
* Set은 같은 타입의 데이터가 순서없이 모여있는 자료구조
* 각 항복의 순서가 중요치 않거나 한번만 표시해야하는 경우 배열대신 사용함.

##Set문법##
* 기본 표현 : Set<Element>로 set type을 표현
* Element는 배열에 저장할 수 있는 타입
* Set은 Array와 다르게 축약 문법이 없음

```swift
var someInts: Set<Int> = Set<Int>()
```

## Set리터럴 사용 ##

* Set type으로 설정된 변수는 배열 리터럴을 이용해서 값을 설정할 수 있음

[값1, 값2, 값3]

```swift
var someInts: Set<Int> = [1, 2, 3, 4]
someInts = []
var someStrings: Set = ["Joo", "young"]
```

## Set Element 가져오기 ##
* Set은 순서가 정해져 있지 않기 때문에 for-in구문을 통해서 데이터를 가져와야 함.
* 순서가 정해져 있지 않지만 정렬을 통해 데이터를 원하는 순서대로 가져올 수 있음
	- Set을 정렬하면 return값이 array임

## Set기능 ##

* 교집합: intersection
* 여집합: symmetricDifference
* 합집합: union
* 차집합: substracting

## Set 예제 ##

```swift
func setTest()
{
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [2, 4, 6, 8]
    let primeDigits: Set = [2, 3, 5, 7]
    
    print("test======")
    //교집합
    let intersectList = oddDigits.intersection(evenDigits)
    print(intersectList)
    //교집합의 여집합
    let differenceList = oddDigits.symmetricDifference(primeDigits)
    print(differenceList)
    //합집합 & 정렬
    let unionList = oddDigits.union(evenDigits).sorted()
    print(unionList)
    // 차집합 & 정렬
    let subtractList = oddDigits.subtracting(primeDigits).sorted()
    print(subtractList)
}
setTest()

/// 결과값

test======
[]
[2, 9, 1]
[1, 2, 3, 4, 5, 6, 7, 8, 9]
[1, 9]
```
