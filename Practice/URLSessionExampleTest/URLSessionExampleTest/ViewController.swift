//
//  ViewController.swift
//  URLSessionExampleTest
//
//  Created by 구민회 on 22/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

/********************************************************
 ==================
 URL Loading System
 ==================
 - 앱이 URL로 참조되는 콘텐츠에 접근할 숭 ㅣㅆ게 해주는 클래스 및 프로토콜 집합  (웹뿐만 아니라 데이터와 파일 포함)
 - 다른 Porotocol들을 사용해 resource에 접근할 수 있다록 지원
 ∙ File Transfer Protocol (ftp://)
 ∙ Hypertext Transfer Protocol (http://)
 ∙ Hypertet Transfer Protocol with encryption (https://)
 ∙ Local file URLs (file://)
 ∙ Data URLs(data://)
 
 - URLSession
 ∙ 가장 일반적으로 사용되는 class, 출처의 URL Contents를 검색하고 가져오는 역할을 하며 Memory에 data를 가져오거나 Disk로 Download 하는 방법이 있음
 ∙ URL data 또는 file을 가져오는 2가지 기본적인 접근 방법
 > 간단한 요청의 경우 URLSession API를 사용해서 URL 객체의 내용을 직접 가져오거나, Data객체 또는 File로 Disk에 기록
 > Data Upload 처럼 좀 더 복잡한 요청은  URLRequest객체를 URLSession에 제공
 ∙ URLSession 객체에 의해 시작된 Download는 캐시되지 않으므로 결과를 캐시해야 한다면 Down받은 Data를 Disk에 저장 필요
 ∙ HTTP/1.1, SPDY, and HTTP/2 지원 -> 추후 찾아 볼것!wikipedia - SPDY
 
 ==============
 Heoper Classes
 ==============
 Request 와 Server의 Response 에 대한 추가 MetaData 제공을 위해 URLRequest URLResponse 라는 두 개의 Helper Class가 제공됨
 
 URLRequest
 - URLRequest 객체는 Protocol에 독립적인 방식으로 URL 및 모든 Protocol 관련 속성을 캡슐화(Encapsulization)
 - 일부 Protocal은 Protocal별 속성릉ㄹ 지원.
 예를 들면 HTTP Protocol은 HTTP request body, headers, transfer method 를 설정하거나 반환하는 Method를 추가
 
 URLResponse
 - 요청에 대한 Server의 응답은 Contents를 설명하는 MetaData와 Contents Data 그 자체 2 부분으로 나눌 수 있음
 - MetaData는 대부분의 Protocal에서 공통적으로 MIME type(media type), 예상 Contents 길이, Text Encoding 및 응답을 제공한 URL 로 구성되며,
 URLResponse Class에 의해 캡슐화된다
 - Protocol별 하위 class는 추가 MetaData를 제공할 수 있다.
 e.g., HTTPURLResponse 는 WebServer가 반환한 header 와 상태코드를 저장
 - Response의 MetaData만  URLResponse객체에 저장되고 bodyMessage는 별도로 처리
 
 URLResponse - Client-side error
 HTTPRULResponse - Server-Side error
 
 // HTTPURLResponse
 public init?(url: URL, statusCode: Int, httpVersion HTTPVersion: Sting?, headerFields: [Sting : String]?) //-> 생성자
 open var statusCode: Int { get }
 open var allHeaderFields: [AnyHashable : Any] { get }
 open class func localizedSting(forStatusCode statusCode: Int) -> String  // -> statusCode 에 코드를 넣고 이 메서드를 실행하면, 그 지역 언어료 표기됨.

 ==========
 URLSession
 ==========
 - URLSession Class 및 관련 Class는 HTTP를 통해 Contents를 Download하기 위한 API제공
 - 인증 지원을 위한 다양한 delegate Method를 제공하며, App이 실행중이지 않을 때 또는 suspended 상테애 있을 때 Background에서 downlaod 받을 수 있는 기능 제공
 - 대부분의 Networking API 와 마찬가지로 URLSession API 는 비동기식으로 동작
 - Completion callbacks를 Custom delegate를 대신해 사용 가능하며 이 때는 delegate 미호출
 - datat tasks, download tasks, upload tasks, stream tasks (9.0에서 추가)4가지 유형의 작업 지원
 
 - URLSessionTask
    - URLSessionDownloadTask
    - URLSessionDataTask
      - URLSessionUploadTask
 
 ==================================
 Understanding URL Session Concepts
 ==================================
 Types of Sessions
 - Session은 Session을 생성할 때 사용된 Configuration 객체에 의해 지정되는 3가지 type을 가짐
    - Default sessions: URL을 down받기 위한 다른 method들과 유사하게 동작. disk 기반의 cache를 사용.
    - Ephemeral sessions: disk 에 어떤 data도 저장하지 않음. 모든 Cache 와 증명서 저장소 등은 RAM에 저장되어 Session과 연결됨, 그래서 App이 Session을 무효화하면 자동으로 관련 정보들이 제거됨.
    - Background sessions: 별도의 process가 모든 Data 전송을 처리한다는 점을 제외하고 default Session과 유사함.
********************************************************/




class ViewController: UIViewController {

  @IBOutlet private weak var imageView: UIImageView!
  var mySession: URLSession?
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
  }
  
  // MARK: Sync method
  
  @IBAction private func syncMethod() {
    print("\n------------------ [ syncMethod ] ------------------\n")
    let url = URL(string: "https://lorempixel.com/860/640/cats/")!
    
    
//    if let data = try? Data(contentsOf: url) {
//      print("image downloaded1")
//      self.imageView.image = UIImage(data: data)
//    }
        DispatchQueue.global().async() {
          if let data = try? Data(contentsOf: url) {
            DispatchQueue.main.async {
                  print("image downloaded1")
              self.imageView.image = UIImage(data: data)
            }
          }
        }
        print("image downloaded2")
      }
    //}
  //}

  
  
  // MARK: - URL Encoding Example
  @IBAction private func urlEncodingExample() {
        print("\n------------------ [ urlEncodingExample ] ------------------\n")
    
    // String To URL
    let originalString = "color-#708090"
    let encodedStirng = originalString.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)
    print(encodedStirng!) // prints "color- %23708090"
    
    // URL To String
    let url = URL(string: "https://example.com/#color-%23708090")!
    let components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
    let fragment = components.fragment!
    print(fragment) //prints "color#708090"

    // nil
    let urlString = "https://search.naver.com/search.naver?query=한글"
    if let nilURL = URL(string: urlString) {
      print(nilURL)
    }
    
    // Query 부분 변환
    let str = "https://search.naver.com/search.naver?query=한글"
    let queryEncodedStr = str.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
    let convertedStr = URL(string: queryEncodedStr)!
    print(convertedStr)
    
    // http://username:password@www.example.com/index.html?key=1&value=2#frag
    // CharacterSet.urlUserAllowed
    // CharacterSet.urlPasswordAllowed
    // CharacterSet.urlHostAlowed
    // CharacterSet.urlPathAllowed
    // CharacterSet.urlQueryAllowed
    // CharacterSet.urlFragmentAllowed
    
    /************************************************
     URL문자열의 percent-encode부분을 위해 addingPercentEncoding메서드 활용
     URL component or subcomponent를 위해 적절한 CharacterSet을 전달
     주의! : 전체 URL string에대가 Encoding을 적용하면 안 됨.
     각각의 URL component와 subcomponent는 유효한 무자열에 대한 다른 규칙을 가지고 있을 수 있음.
     ************************************************/
  }
  
  // MARK: - session configration
  @IBAction private func sessionConfig(_ sender: Any) {
    /************************************************
     backgroundConfiguration 을 제외하고 다른 둘은 다른 세션을 추가 생성할 때 재사용이 가능
     (Background는 동일 식별자를 공유하는 두 개의 Backgraound session 객체의 동작을 정의되어 있지 않으므로 재사용 불가)
     
     Session 구서 시 configuration 객체의 값을 Deep Copy 하기  때문에 세션 생성 이후 값을 변경해도
     기존 session에는 영향을 주지 않고 새 session에만 적용 가능
     한 번 session을 구성하고 나면 해당 session은 configuration이나 delegate를 변경할 수 없으므로 새로 생성해야 함.
     ************************************************/
    
    _ = URLSessionConfiguration.default
    _ = URLSessionConfiguration.ephemeral
    _ = URLSessionConfiguration.background(withIdentifier: "kr.gitbot.example.backgoundConfig")
    
    let sessionConfig = URLSessionConfiguration.default
    sessionConfig.allowsCellularAccess = false  // 기본값 true. wi-fi 만 가능하도록 하고 싶을 때
    
    sessionConfig.urlCache = {
      let cacheDir = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask)[0]
      let cachePath = cacheDir.appendingPathComponent("MyCache")
      // 16 kB (16 * 1024), 256MB (2526 * 1024 * 1024)
      let cache = URLCache(memoryCapacity: 16384, diskCapacity: 268435456, diskPath: cachePath.path)
      return cache
    }()
    
    // sessionConfig.urlCache = URLCache.shared
    
    /********************************************
     URLCache.shared 기본 캐시 설정
     - Memory capacity: 4 megabytes (4 * 1024 * 1024 bytes)
     - Disk capacity: 20 megabytes (20 * 1024 * 1024 bytes)
     - Disk path: (user home directiory)/Library/Caches/(application bundle id)
     - URLCache.shared - 특별한 캐싱 요구 사항이나 제한 조건이 없는 앱은 기본 공유 캐시 인스턴스를 사용.
    ********************************************/
    
    sessionConfig.requestCachePolicy = .useProtocolCachePolicy
    
    /********************************************
     ∙ reloadIngoringLocalCacheData
       - 로컬 캐시 파일은 완전히 무시하고 항상 원본 소스에 접근
     ∙ returnCacheDataDontLoad
       - 로컬 캐시 파일만 취급하여 네트워크 연결을 하지 않으며  Offline 모드와 유사하게 동작
       - URLSessionTask 객체에서 이 정책으로 요청을 보냈는데 캐시 파일이 없을 경우 nil 반환.
     ∙ returnCacheDataElseLoad
       - 로컬 캐시 파일부터 읽어 보고 만료 기간이 지났을 경우 원본 소스에 접근
     ∙ userProtocolCachePolicy
       - 각 프로토콜별 정책에 따름
     
     아래 2개는 Swift에서 미구현된 정책이므로 사용하지 말 것
     -  reloadIgnoringLocalAdnRemoteCacheData
     - reloadRevalidatingCacheData
    ********************************************/
    
    print(HTTPURLResponse.localizedString(forStatusCode: 200))
    print(HTTPURLResponse.localizedString(forStatusCode: 404))
    
    mySession = URLSession(configuration: sessionConfig)
    let url = URL(string: "http://www.catster.com/wp-content/uploads/2017/08/A-fluffy-cat-looking-funny-surprised-or-concerned.jpg")!
    let task = mySession?.dataTask(with: url, completionHandler: { (data, response, error) in
      DispatchQueue.main.async {
        guard let data = data else { return }
        self.imageView.image = UIImage(data: data)!
        print("download completed")
      }
    })
    task?.resume()
  }
  
  @IBAction private func urlRequest(_ sender: Any) {
    print("\n------------------ [ urlRequest ] ------------------\n")
    //makeGetCall()
    makePostCall()
    //makeDeleteCall()
  }
  
  func makeGetCall() {
    let todoEndpoint = "https://jsonplaceholder.typicode.com/todos/1"
    guard let url = URL(string: todoEndpoint) else {
      print("Error: cannot create URL")
      return
    }
    let urlRequest = URLRequest(url: url)
    let config = URLSessionConfiguration.default
    let session = URLSession(configuration: config)

    let task = session.dataTask(with: urlRequest) { (data, response, error) in
      guard error == nil else {
        print(error!)
        return
      }
      guard let responseData = data else {
        print("Error: did not receive data")
        return
      }
      do {
        guard let todo = try JSONSerialization.jsonObject(with: responseData) as? [String: Any],
          let todoTitle = todo["title"] as? String
          else { return }
        print(todo)
        print("Title :", todoTitle)
      } catch {
        print("error tyring to convert data to JSON")
        return
      }
    }
    task.resume()
  }
  
  func makePostCall() {
    let todosEndpoint: String = "https://jsonplaceholder.typicode.com/todos"
    guard let todosURL = URL(string: todosEndpoint) else {
      print("Error cannot create URL")
      return
    }
    
    let newTodo: [String: Any] = ["title": "My First todo", "completed": false, "userId": 1]
    guard let jsonTodo = try? JSONSerialization.data(withJSONObject: newTodo) else { return }
    
    var todosUrlRequest = URLRequest(url: todosURL)
    todosUrlRequest.httpMethod = "POST"
    todosUrlRequest.httpBody = jsonTodo
    
    let session = URLSession.shared
    let task = session.dataTask(with: todosUrlRequest) { (data, response, error) in
      guard error == nil else {
        print(error!)
        return
      }
      guard let responseData = data else {
        print("Error: did not receive data")
        return
      }
      do {
        guard let receivedTodo = try JSONSerialization.jsonObject(with: responseData) as? [String: Any],
          let todoID = receivedTodo["id"] as? Int
          else {
            print("Could not get JSON from responseData as dictionary")
            return
        }
        print(receivedTodo)
        print("The ID is: \(todoID)")
      } catch {
        print("error parsing response from POST on /todos")
        return
      }
    }
    task.resume()
  }
  
  func makeDeleteCall() {
    let firstTodoEndpoint = "https://jsonplaceholder.typicode.com/todos/1"
    var firstTodoUrlRequest = URLRequest(url: URL(string: firstTodoEndpoint)!)
    firstTodoUrlRequest.httpMethod = "DELETE"
    
    let task = URLSession.shared.dataTask(with: firstTodoUrlRequest) { (data, response, error) in
      guard error == nil else {
        print(error!.localizedDescription)
        return
      }
      print("DELETE ok")
    }
    task.resume()
  }
}






















