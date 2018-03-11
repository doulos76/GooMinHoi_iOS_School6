# Closure #
## 일급 객체 ##

Computer Programming Language Design에서 , 특정 언어의 일급 객체(first-class citizens, 일급 값, 일급 엔티티, 일급 시민)이라 함은 일반적으로 다른 객체들에 적용 가능한 연산을 모두 지원하는 객체를 가리킴.

함수에 매개변수로 넘기기, 변수에 대입하기와 같은 연산들이 여기서 말하는 일반적인 연산의 예임.

### 일급 객체의 조건 ###

* 변수나 데이터 구조안에 담을 수 있음
* parameter로 전달 할 수 있음
* 반환값(return value)으로 사용할 수 있음
* 할당에 사용된 이름과 관계없이 고유한 구별이 가능함
* 동적으로 parameter 할당이 가능함

## 중첩 함수 ##

* 함수 내부에서 함수를 정의해서 사용 되는 함수
* 외부에서 숨겨져 있으며 선언된 함수 내부에서만 호출 가능함.

```swift
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { return input + 1}
    func stepBackward(input: Int) -> Int { return input - 1}
    
    return backward ? stepBackward : stepForward
}

var currentValue = -4
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)
// moveNearerToZero now refers to the nested stepForward() function
while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}
```

## Closure ##
Closures are self-contained blocks of functionality that can be passed around and used in your code. 클로저는 코드에서 전달되고 사용할 수 있는 독립적인 기능 블록임.

Closures can be __capture__ and store references to any constaints and variables from the context in which they are defined. 클로저는 정의 된 컨텍스트에서 모든 상수 및 변수에 대한 참조를 캡처하고 저장할 수 있음.

Global and nested functions, as introduced in Functions, are actually special cases of closures. 글로벌 및 중첩 함수는 함수라고 설명했었으나, 실제로는 클로져의 특별한 종류임.

### Closure의 유형 ###
* Global function는 이름이 있고 값을 캡처하지 않는 클로저임.
* nested function는 이름을 가진 클로저로 내부 함수에서 값을 캡처 할 수 있으.
* Closure expressions은 주변 컨텍스트에서 값을 캡처 할 수 있는 간단한 구문으로 작성된 이름없는 클로저임.

## Closure Expressions ##

```swift
{( parameters ) -> return type in
	statements
}
```
## Closure Example ##

```swift

self.present(nextVC, animated: true, completion: ( () -> void) ?)

let alert = UIAlertAction(title: "알럿", style: .default, handler: <#T##((UIAlertAction) -> Void)?##((UIAlertAction) -> Void)?##(UIAlertAction) -> Void#>)

UIView.animate(withDuration: 0.3,
               animations: <#T##() -> Void#>,
               completion: ((Bool) -> Void)?)
```



