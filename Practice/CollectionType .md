# Collection Type : Array#

## Collection Type ##

* Swift는 값의 모음을 저장하기 위한 배열(Array), 집합(Set), 딕셔너리(Dictionary)라는 세가지 기본 형식을 제공함.
* 배열: 정렬 된 값 모음
* 집합: 고유한 값의 정렬되지 않은 모음
* 딕셔너리:  키-값 연관의 정렬되자 않은 모음


## Mutability of Collections ##

* 변수(var)에 할당하면 Collection를 변경 가능하다.
* Collection에 추가, 제거, 수정할 수 있다.
* let에 할당하면 Collection를 변경 불가능함

## Array ##
* 배열(array)은 번호(index)와 번호에 대응하는 데이터들로 이루어진 자료 구조를 나타냄
* __배열에는 같은 종류의 데이터들이 순차적으로 저장__되어, 값의 번호가 곧 배열의 시작점으로부터 값이 저장되어 있는 상대적인 위치

##Array 문법##

* 기본표현: Array<Element>로 Array type을 나타냄
* Element: 배열을 저장할 수 있는 type
* 축약문법: [Element]

```swift
var someInts: [Int] = [Int]()
var someInts: Array<Int> = Array<Int>()
```

## 배열 리터럴 ##
* 배열 리터럴 문법은 대괄호[]를 사용함.
* [값1, 값2, 값3]

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts = []
```
## 배열 Element 가져오기 ##
* index를 통해 배열의 값을 가져올 수 있음
* index  0부터 시작됨

```swift
var someInts: [Int] = [1, 2, 3, 4]
print("\(someInts[0])")
print("\(someInts[3])")
```

## 배열 추가 기능 ##
* 배열의 Element갯수 : __count__

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts.count // 4
```

* 빈 배열 확인: __isEmpty__

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts.count
someInts.isEmpty	// false
```

* Element 추가: __append__

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts.count
someInts.isEmpty
someInts.append(5) // [1, 2, 3, 4, 5]
someInts.append(contentsOf: [1, 2, 3]) // [1, 2, 3, 4, 5, 1, 2, 3]
```

* Element 삽입: __insert__

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts.count
someInts.isEmpty
someInts.append(5)
someInts.append(contentsOf: [1, 2, 3])
someInts.insert(0, at: 1) // 1, 0, 2, 3, 4, 5, 1, 3]
```

* Element 삭제: __remove__

```swift
var someInts: [Int] = [1, 2, 3, 4]
someInts.count
someInts.isEmpty
someInts.append(5)
someInts.append(contentsOf: [1, 2, 3])
someInts.insert(0, at: 1)
someInts.remove(at: 0)
someInts	// [0, 2, 3, 4, 5, 1, 2, 3]
```

##배열 예제##

```swift
func arrayTest()
{
    var list:[String] = ["my", "name", "is", "a", "joo", "younmin"]
    list.append("입니다.")
    print("list 배열의 총 갯수는", list.count)
    print(list[3])
    list.remove(at: 3)
    list.insert("my introduce it my self.", at: 0)
    
    for text in list
    {
        print(text)
    }
}

arrayTest()

// 실행 결과 
list 배열의 총 갯수는 7
a
my introduce it my self.
my
name
is
joo
younmin
입니다.

```
