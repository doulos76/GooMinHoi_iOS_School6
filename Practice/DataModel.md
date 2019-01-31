# Data Model 만들기

## Struct로 Data model 만들기

* Server나 DataBase에서 가져온 Data를 바로 사용하지 않고 Data Model을 만들어서 사용
* Struct로 data model을 만들어 사용함(data의 경우 참조형 보다는 값 복사형 타입이 좋기 때문)

## Data control flow

![](/Img/dataControlFlow.png)

## Data Model을 사용하는 이유

* 사용편의성
  * 복잡한 구조의 Collection type을 주로 사용하게 되면, 매번 사용할 때 마다 데이터를 끄집어 내기 위해 Array, Dictionary instance를 만들어야 함
* 안정성
  * Dictionary의 Data는 key값을 통해 data에 접근한다. String type인 key값은 다양한곳에서 사용하게 되면 오타의 위험성이 커진다.
* 수정용이
  * Data중 dictionary의 key값 변경시 코드내 사용된 모든곳을 찾아서 직접 바꿔져야 함.

## Data Model 만들기

* Data 하나당 Property 하나로 매칭
* 필수 데이터와 기타 데이터를 접근 제한자로 구분
* 데이터 구조 단순화 작업
* 가공이 필요한 데이터 만들기

### 예제: Login 정보

* 실제 더미 데이터
```swift
let userDic: Dictionary<String, Any> = [
	"userID": "kim",
	"userPW": "12345!@",
	"email": "kingquean@gmail.com",
	"birthDay": "2017/10/15",
	"gender": 1
]
```

* Model

| key     | valueType |
|---------|-----------|
|userID   | String    |
|userPW   | String    |
|email    | String    |
|birthday | String    |
|gender   | Int       |

* DataModel Struct

```swift
struct UserModel {
	var userID: String
	var pw: String
	var email: String
	var birthday: Stringf
	var gender: Gender?
	
	init?(dataDic: [String: Any]) {
		// 필수 항목 모델화
		guard let userID = dataDic["UserID"] as? String else { return nil }
		self.userID = userID
		
		guard let pw = dataDic["userPw"] as? String else { return nil }
		self.pw = pw
		
		guard let email = dataDic["email"] as? String else { return nil }
		self.email = email
		
		// Optional 항목 모델화
		self.birthday = dataDic["birthDay"] as? String
		
		if let rawData = dataDic["gender"] as? Int, (rawData == 1 || rawData == 2) {
			self.gender = Gender(rawValue: rawData)
		}
	}
}
```
### 복잡한 데이터 모델

* 음악앨범 정보

1. 앨범 정보
  - 앨범 타이틀
  - 가수 이름
  - 장르
2. [노래 정보 리스트]
  - 노래 정보
    * 노래제목
    * 가수
    * 작곡가, 작사가
    * 총 플레이 시간
    * 노래 URL
   
* 실제 더미 데이터
   
```swift
let album: Dictionary<String, Any> = [
	["albumInfo": ["albumTitle": "2집 Oh!",
					  "artist": "소녀시대",
					  "genre": "댄스"
					  ],
	  "songList": [["songTitle": "Oh!",
	                "trackNum": 1,
	                "artist": "소녀시대",
	                "writer": "김정배",
	                "playTime": 12340,
	                "playURL": "http://music.naver.com/123"
	                ],
	                ["songTitle": "Show! Show! Show!",
	                "trackNum": 2,
	                "artist": "소녀시대",
	                "writer": "김부민",
	                "playTime": 10130,
	                "playURL": "http://music.naver.com/124"
	                ],
	                ["songTitle": "웃자 (Be Happy",
	                "trackNum": 4,
	                "artist": "소녀시대",
	                "writer": "이트라이브",
	                "playTime": 12134,
	                "playURL": "http://music.naver.com/126"
	                ]
	               ]
		
	 ]
]
```

* Model


| key     | valueType |          |         |
|---------|-----------|----------|---------|
|albumInfo|Dictionary |          |         |
|         |key        |valueType |         |
|         |albumTitle |String    |         |
|         |artist     |String    |         |
|         |genre      |String    |         |
|songList |Array      |          |         |
|         |[          |Dictionary|         |
|         |           |key       |valueType|
|         |           |songTitle |String   |
|         |           |trackNum  |Int      |
|         |           |artist    |String   |
|         |           |writer    |String   |
|         |           |playTime  |Int      |
|         |           |playURL   |String   |
|         |]          |          |         |

### Data Model Struct
* 복잡한 구조의 데이터를 구분하여 만들기 위해선?!
* Key-Value가 있는 Dictionary 구조마다 Data Model 만들기
* AlbumModel, AlbumInfo, SongData

```swift
struct Album {
	var albumTitle: String
	var artist: String
	var genre: String
	
	init? (dataDic: [String: Any]) {
		// 이전 방법과 동일
		guard let albumTitle = dataDic["albumTitle"] as? String else { return nil }
		self.albumTitle = albumTitle
		
		guard let artist = dataDic["artist"] as? String else { return nil }
		self.artist = artist
		
		guard let genre = dataDic["genre"] as? String else { return nil }
		self.genre = genre
	}
}

struct SongData {
	var songTitle: String
	var trackNum: Int
	var artist: String
	var writer: String
	var playTime: Int
	var playURL: String
	
	init?(dataDic:[String: Any]{
		// 이전 방법과 동일
		guard let songTitle = dataDic["songTitle"] as? String else { return nil }
		self.songTitle = songTitle
		
		guard let trackNum = dataDic["trackNum"] as? Int else { return nil }
		self.trackNum = trackNum
		
		guard let artist = dataDic["artist"] as? String else { return nil }
		self.artist = artist
		
		guard let writer = dataDic["writer"] as? String else { return nil }
		self.writer = writer
		
		guard let playTime = dataDic["playTime"] as? Int else { retrurn nil }
		self.playTime = playTime
		
		guard let playURL = dataDic["playURL"] as? String else { return nil }
		self.playURL = playURL
	}
}

struct AlbumModel {
	var albumInfo: AlbumInfo
	var songList: [SongData] = []
	
	init?(dataDic: [String: Any]) {
		guard let infoDic = dataDic["albumInfo"] as? Dictionary<String, Any> else { return nil }
		// Data instance 만들기
		albumInfo = AlbumInfo(dataDic: infoDic)!
		
		guard let list = dataDic["songList"] as? [Dictionary<String, Any>] else { return nil }
		
		// for 문을 통해 각 데이터를 모델로 만든 후 Array에 추가
		for songDic in list {
			songList.append(SongData(dataDic: songDic)!)
		}
	}
}
```
