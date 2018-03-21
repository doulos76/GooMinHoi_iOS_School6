# alert

* alert message를 Pop-Up 할 경우엔
	1. 'alert'을 변수, 또는 상수로 선언하고
	2. 'alert'을 담당하는 __UIAlertController__로 초기화를 해야겠지.
	3. UIAlertController에는
		
		1. __title__ : String? -> " "안에 제목을 입력
		2. __message__ : "String? -> " "안에 내용을 입력
		3. __preferredStyle__ : UIAlertControllerStyle -> alert, actionsheet중 하나를 선택.
		
		이 들어감.
		
		```swift
		let alert = UIAlertController(title: "Title", message: "This is message", preferredStyle: .alert)
		```
		
	4. alert창이 떳으면, 무언가 행동을 해야 해!
	
		1. __action__을 선택해서 하는 것야!
		2. 이것도  상수 또는 변수로 선언하는데, 보통은 변하지 않으니 상수가 좋을 거야!
		3. 보통 다음처럼 선언.
		  
		  ```swift
		  let action = UIAlertAction(tilte: "OK", style: .defalut, handler: nil)
		  ```
		  
	5. alert에 action을 추가해 줘야하겠지!
	
		```swift
		alert.addAction(action)
		```
		
	6. alert 창을 뛰어 줘야 완성.

		```swift
		present(alert, animated: true, completion: nil)
		```
	
	