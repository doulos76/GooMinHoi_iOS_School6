//
//  Sample2.swift
//  MyCustomViewSample
//
//  Created by 구민회 on 2018. 2. 2..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class Sample2: UIView {
    
    var mySubView: UIView!
    var imageView: UIImageView!
    var mainTitleLabel: UILabel!
    var subTitileLabel: UILabel!
    
    /// 초기화 메서드
    ///
    /// - Parameter frame: CGRect
    override init(frame: CGRect) {
        let newFrame = CGRect(x: frame.origin.x, y: frame.origin.y, width: frame.size.width, height: 110)
        super.init(frame: frame)
        createView()
        layoutView()
        
    }
    
    /// create customView method
    func createView() {
        mySubView = UIView()
        mySubView.backgroundColor = UIColor.orange
        self.addSubview(mySubView)
        
        imageView = UIImageView()   // create UIImageView instance, named 'imageView'
        mySubView.addSubview(imageView)  // imageView is added Sample2's subView
        
        mainTitleLabel = UILabel()                              // create instnace of mainTitleLabel
        mainTitleLabel.textColor = UIColor.black                // setting text color of mainTitleLabel
        mainTitleLabel.font = UIFont.systemFont(ofSize: 20)     // setting font type and size of mainTitleLabel
        mySubView.addSubview(mainTitleLabel)                         // adding mainTitleLabel as SubView
        
        subTitileLabel = UILabel()                              // create subTitleLabel
        subTitileLabel.textColor = UIColor.gray                 // setting text color of sutTitleLabel
        subTitileLabel.font = UIFont.systemFont(ofSize: 15)     // setting font and size of subTitleLabel
        mySubView.addSubview(subTitileLabel)                         // adding subTitleLabel as SubView
    }
    
    /// layout customView method
    func layoutView() {
        let margin: CGFloat = 5                                 // view의 외각에서 안쪽으로 사용할 margin size  지정
        var offsetX: CGFloat = margin                           // 반복작업을 위한 width값에 사용할 offsetX값 지정
        mySubView.frame = CGRect(x: margin, y: margin, width: 200, height: 100)
        imageView.frame = CGRect(x: margin, y: margin, width: mySubView.frame.size.height - margin * 2, height: mySubView.frame.size.height - margin * 2)     // imageView의 frame설정
        offsetX += imageView.frame.size.width + margin          // offsetX에 imageView의 가로 길이에 margin값을 더하고 할당
        mainTitleLabel.frame = CGRect(x: offsetX, y: margin, width: self.frame.size.width - offsetX, height: 45)
        subTitileLabel.frame = CGRect(x: offsetX, y: imageView.frame.size.height - 45, width: self.frame.size.width - offsetX, height: 45)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    /// 외부에서 image file을 지정할 수 있는 함수 지정
    ///
    /// - Parameter named: 외부에서 사용할 이미지 파일의 이름 (png의 경우 확장자 생략가능, jpg의 경우 확장자를 기재하여야 함.)
    func image(named: String){
        imageView.image = UIImage(named : named)
    }
    
    /// customView에서 사용할 main Title, sub title을 설정할 수 있는 메서드
    ///
    /// - Parameters:
    ///   - mainTitle: mainTitle 이름
    ///   - subTitle: subTitle 이름
    func title(mainTitle: String, subTitle: String) {
        mainTitleLabel.text = mainTitle
        subTitileLabel.text = subTitle
    }
}
