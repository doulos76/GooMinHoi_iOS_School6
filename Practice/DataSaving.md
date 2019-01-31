# Data Saving

## Property List

## Property list - plist


* Sample한 "file" 저장 방법 중 하나.
* Key, Value 구조로 데이터 저장
* File 형태로 저장되다 보니 외부에서Access 가능(보안 취약)

## File location

* file이 저장되는 곳 : Bundle & Documents folder
* Bundle은  project에 추가된. Resource가 모인 곳
* program이 실행되면 저장되는 파일은 Documents폴데에 저장됨

* __즉! plist file의 데이터만 불러오는 역할은 bundle을 통해서, plist 파일에 데이터를 쓰고 불러오는 역할은 Documents폴더에 저장된 파일로!__


## Plist File in Bundle

1. bundle에 있는 파일 Path 가져오기
2. Path를 통해 객체로 변환, 데아ㅣ터 부러오기
3. 사용

## Bundle

* 실행코드, 이미지, 사운드, nib file, frame work, 설정 파일 등 코드와 resource가 모여 있는 file system 내의 directory

## Bundle resource 확인

## Main Bundle 가져오기

```swift
// Get the amin bundle for the app.
let mainBundle = Bundle.main
```

## Resource file 주소 가져오기

```swift
// Get the main bundle for the app.
let mainBundle = Bundle.main
let filePath = mainBundle.path(forResource: "rName", ofType: "rType")
```

## 데이터 불러오기

```swift
if let path = filePath {
	let image = UIImage(contentsOfFile: filePath!)
}
```

## Plist file in Bundle

```swift
if let filePath = mainBundle.path(forResource: "rName", ofType: "rType"),
let dict = NSDictionary(contentsOfFile: filePath) as? [String: Any] {
	// use swift dictionary as normal
}
```

## Plist file 불러오기
* 앱내 저장되어 있는 plist 리소스 파일의 데이터는 번들을 통해 가져올 수 있다.


## Plist file in Document

1. Document folder Path 찾기
2. Document folder에 plist 파일이 잇는지 확인
 * 만약 없다면 : Bundle에 있는 파일 Document에 복사
3. Path를 통해 객체로 변환, 데이터 불러오기
4. wirteToFile 메서로 파일 저장


### 1. 파일 불러오기(NSSerarchPathForDirectoriesInDomains)

```swift
let path: [String] = NSSearchPathDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
let basePath = path[0] + "/fileName.plist"
```

- document folder에 path구하기

### 2. Document folder에 파일 있는지 확인

```swift
if !FileManager.default.fileExist(atPath: basePath) {

}
```

- document folder에 plist file이 존재하는지 확인

### 3. bundle에 있는 file을 Document에 복사

```swift
if let fileUrl = Bundle.main.path(forResource: "fileName", ofType: "plist") {
	do {
		try FileManager.default.copyItem(atPath: fileUrl, toPath: basePath)
	} catch {
		print("fail"
	}
}
```

- if this file is not in Document, the file in Bundle copy to Document foldder.

### 4. Calling Dictionary Instance

```swift
if let dict = NSDictionary(contentsOfFile: bastPath) as? [String: Any] {
	// use swift dictionary as normal
}
```

- The file in documents folder call  as dictionary instance through NSDictionary

### 5. File saving with `write(toFile)` method

```swift
if let dict = NSDictionary(contentsOfFile: basePath) as? [String: Any] {
	var loadData = dict
	loadData.upddateValue("addData", forKey: "key")
	
	let nsDic: NSDictionary = NSDictionary(dictionary: loadData)
	nsDic.write(toFile: basePath, atomatically: true)
}
```

- revise Dictionary
- after revise to NSDictionary, save to file with `writeToFile` method

