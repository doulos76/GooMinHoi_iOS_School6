## Dictionary ##

* Dictionary는 순서가 정해져 있지 않은 데이터에 키값을 통해 구분할 수 있는 자료 구조
* 항목의 순서가 중요치 않고 key값을 통해서 데이터를 접근할 때 사용함

## Dictionary문법 ##

* 기본표현: Dictionary<key, value>로 Dictionary Type을 나타냄
* key값은 Dictionary에서 value를 가져오는데 사용되는 값
* 축약문법 : [key: value]

```swift
var someInts:[String: Int] = [String: Int]()
var someInts: Dictionary<String, Int> = [:]
```

## Dictionary 리터럴 ##

* Dictionary리터럴 문법은 [:]를 사용함
* [키1: 값1, 키2: 값2, 키3: 값3]

```swift
var airports: [String: String] = ["ICH": "인천공항", "CJU": "제주공항"]
```

## Dictionary Value 가져오기 ##

* key값을 통해 value값을 가져올 수 있다.

```swift
var airports: [String: String] = ["ICH": "인천공항", "CJU": "제주공항"]
print("\(airports["ICH"])")
print("\(airports["CJU"])")
// 결과값
Optional("인천공항")
Optional("제주공항")
```

## Dictionary 기능 ##
* Dictionary의 Element갯수 : count
* 빈 배열 확인 : isEmpty
* Element 추가: updateValue
* Element 삽입: updateValue
* Element 삭제: removeValue

## Down casting "as"
* 일반적으로 key의 타입은 String으로 지정함
* value에 타입은 다양하게 쩡해야 되는 경우가 많음, 이 경우 Any type을 사용함
* Any에서 내가 원하는 타입으로 캐스팅하는 경우를 다운 캐스팅이라고 하고, as 키워드를 사용해서 캐스팅함

```swift
var person: [String: Any] = ["name": "joo", "age": 20, "isSingle": true]
let name1 = person["name"]
print(type(of: name1))
let name2 = person["name"] as! String
print(type(of: name2))
/// 결과값
Optional<Any>
String
```
## Dictionary 예제 ##
```swift
func dicTest()
{
    // 기본 딕셔너리
    var dic: [String: Any] = ["name": "joo", "age": 20, "job": "Developer", "isSingle": true]
    
    // 딕셔너리 추가
    dic.updateValue("address", forKey: "Seoul")
    // 딕셔너리 수정
    dic.updateValue("name", forKey: "winman")
    // 삭제
    dic.removeValue(forKey: "isSingle")
    
    // 값 불러오기
    let introduce: String = "제 이름은" + (dic["name"] as! String) + "입니다."
    let doubleAge = (dic["age"] as! Int) * 2
}

```
