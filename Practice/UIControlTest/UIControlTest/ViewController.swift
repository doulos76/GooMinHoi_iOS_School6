//
//  ViewController.swift
//  UIControlTest
//
//  Created by 구민회 on 2018. 2. 1..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    var selectedBtn: UIButton?
//    var selectedBtnList: [Int]?
//    var resultTextLb: UILabel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        //let sosiImage: UIImage? = UIImage(named: "testImage.jpg")   // network 연결시
//        let sosiImage: UIImage = UIImage(named: "testImage.jpg")!   // 개발자가 확실히 알 경우
//        let bgImgView: UIImageView = UIImageView(frame: view.bounds)
//        bgImgView.image = sosiImage
//        bgImgView.backgroundColor = .green
//        bgImgView.contentMode = UIViewContentMode.scaleAspectFill
//        view.addSubview(bgImgView)
//
//        let wallpaperImage: UIImage? = UIImage(named: "wallpaperImage.jpg")
//        let wallpaperImageView: UIImageView = UIImageView(frame: CGRect(x: view.frame.size.width * 1/3, y: view.frame.size.height * 1/3, width: 200, height: 400))
//        wallpaperImageView.image = wallpaperImage
//        wallpaperImageView.backgroundColor = .white
//        wallpaperImageView.contentMode = UIViewContentMode.redraw
//        view.addSubview(wallpaperImageView)
        
//        let faceBookLogoImg: UIImage? = UIImage(named: "faceBookLogo.png")
//        let faceBookLogoImgView: UIImageView = UIImageView(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
//        faceBookLogoImgView.image = faceBookLogoImg
//        faceBookLogoImgView.backgroundColor = UIColor.clear
//        faceBookLogoImgView.contentMode = UIViewContentMode.scaleAspectFill
//        view.addSubview(faceBookLogoImgView)
        
        
        
//        // 글자가 안보일 때 중간에 넣어서 함.
//        let coverView: UIView = UIView(frame: bgImgView.bounds)
//        coverView.backgroundColor = .darkGray
//        coverView.alpha = 0.4
//        bgImgView.addSubview(coverView)
//
//        // Label
//        let titleLb: UILabel = UILabel(frame: CGRect(x: 0, y: 100, width: view.frame.size.width, height: 150))
//        titleLb.text = "UI Test View"
//        titleLb.textColor = UIColor.darkGray
//        titleLb.font = UIFont.systemFont(ofSize: 45)
//        titleLb.textAlignment = NSTextAlignment.center
//        view.addSubview(titleLb)
//        //Lb : Label
//        let centerTextLb: UILabel = UILabel(frame: CGRect(x: 0, y: view.frame.size.height / 2 - 75, width: view.frame.size.width - 40, height: 300))
//        centerTextLb.text = """
//        1.번줄 ;; jakls   fjlakskjfklasjfk  lasjflaj  asldfjasdijf   aelwjflaiweaj   fewli fwjkflewakfe lw
//        2.번줄 : ajfklajflkajsfl  ajsfdlkjsadlkjfklasdfj  asldfjasdijf   aelwjflaiweaj   fewli fwjkflewakfe lw
//        3.번줄 : jkaljsfkllajskl  dsjalsdjklfsajkladsjdflkj  asldfjasdijf   aelwjflaiweaj   fewli fwjkflewakfe lw
//        4.번줄 : ajklsjflakjslfkjlakjasfklajs  kldjflksadjsiodsi  ajdfkldsaj  asldfjasdijf   aelwjflaiweaj   fewli fwjkflewakfe lw
//        5.번줄: jakljslfj  asldfjasdijf   aelwjflaiweaj   fewli fwjkflewakfe lw
//        """
//        centerTextLb.textColor = UIColor.blue
//        centerTextLb.font = UIFont.systemFont(ofSize: 17)
//        centerTextLb.numberOfLines = 5
//        centerTextLb.lineBreakMode = .byWordWrapping
//        view.addSubview(centerTextLb)
//
//        /// Label middle region
//        let middleTestLabel: UILabel = UILabel(frame: CGRect(x: view.frame.size.width * 2/5, y: view.frame.size.height * 3/5, width: view.frame.size.width * 1/5, height: view.frame.size.height * 1/5))
//        middleTestLabel.text = "Middle text"
//        middleTestLabel.textColor = UIColor.orange
//        middleTestLabel.font = UIFont.italicSystemFont(ofSize: 30)
//        middleTestLabel.numberOfLines = 1
//        middleTestLabel.lineBreakMode = .byTruncatingTail
//        middleTestLabel.textAlignment = NSTextAlignment.right
//        view.addSubview(middleTestLabel)
//
//        /// Label Bottom Region
//        let bottomTestLb: UILabel = UILabel(frame: CGRect(x: 0, y: view.frame.size.height * 8/10, width: view.frame.size.width * 4/5, height: view.frame.size.height * 1/5))
//        bottomTestLb.text = "Bottom Label"
//        bottomTestLb.textColor = UIColor.green
//        bottomTestLb.font = UIFont.systemFont(ofSize: 20)
//        bottomTestLb.textAlignment = .center
//        view.addSubview(bottomTestLb)
        

//        let logoBtn1: UIButton = UIButton(type: .custom)
//        logoBtn1.frame = CGRect(x: 25, y: 25, width: 150, height: 45)
//        logoBtn1.setImage(#imageLiteral(resourceName: "faceBookLogo.png"), for: .normal)
//        logoBtn1.setTitle("애플정품", for: .normal)
//        logoBtn1.tag = 1
//        logoBtn1.addTarget(self, action: #selector(self.logoEventTouchUpInside(_:)), for: .touchUpInside)
//        view.addSubview(logoBtn1)
//
//        let logoBtn2: UIButton = UIButton(type: .custom)
//        logoBtn2.frame = CGRect(x: 25, y: 25, width: 150, height: 45)
//        logoBtn2.setImage(#imageLiteral(resourceName: "faceBookLogo.png"), for: .normal)
//        logoBtn2.setTitle("애플정품", for: .normal)
//        logoBtn2.tag = 2
//        logoBtn2.addTarget(self, action: #selector(self.logoEventTouchUpInside(_:)), for: .touchUpInside)
//        view.addSubview(logoBtn2)

//        let logoBtn: UIButton = UIButton(type: .custom)
//        logoBtn.frame = CGRect(x: 20, y: 20, width: 200, height: 72)
//        logoBtn.setTitle("facebook Button", for: .normal)
//        logoBtn.imageEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        //logoBtn.titleRect(forContentRect: CGRect(x: 50, y: 0, width: logoBtn.bounds.size.width * 2/3, height: logoBtn.bounds.size.height * 1/3))
//        logoBtn.setImage(UIImage(named: "faceBookLogo.png"), for: .normal)
//        logoBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0)
//        logoBtn.imageRect(forContentRect: CGRect(x: 0, y: 0, width: logoBtn.bounds.size.width * 1/3, height: logoBtn.bounds.size.height * 1/3))
//        logoBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        
//        view.addSubview(logoBtn)
        
//        resultTextLb?.frame = CGRect(x: 10, y: 440, width: 200, height: 100)
//        resultTextLb.text = "선택하신 결과값은"
//        resultTextLb.font = UIFont.systemFont(ofSize: 20)
//        view.addSubview(resultTextLb)
//
//        let logoButton1: UIButton = UIButton(type: UIButtonType.custom)
//        logoButton1.frame = CGRect(x: 10, y: 30, width: 272, height: 72)
//        logoButton1.setTitle("1번", for: .normal)
//        logoButton1.setTitleColor(.black, for: .normal)
//        logoButton1.setTitleColor(.blue, for: .highlighted)
//        logoButton1.setTitleColor(.red, for: .selected)
//        logoButton1.tag = 1
////        logoButton1.setImage(UIImage(named: "number-1.png"), for: .normal)
//
//        logoButton1.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
//
//        view.addSubview(logoButton1)
//
//        let logoButton2: UIButton = UIButton(type: UIButtonType.custom)
//        logoButton2.frame = CGRect(x: 10, y: 130, width: 72, height: 72)
//        logoButton2.setTitle("2번", for: .normal)
//        logoButton2.tag = 2
//        logoButton2.setTitleColor(.black, for: .normal)
//        logoButton2.setTitleColor(.blue, for: .highlighted)
//        logoButton2.setTitleColor(.red, for: .selected)
//
////        logoButton2.setImage(UIImage(named: "number-2.png"), for: .normal)
//        logoButton2.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
//        view.addSubview(logoButton2)
//
//        let logoButton3: UIButton = UIButton(type: UIButtonType.custom)
//        logoButton3.frame = CGRect(x: 10, y: 230, width: 72, height: 72)
//        logoButton3.setTitle("3번", for: .normal)
//        logoButton3.tag = 3
//        logoButton3.setTitleColor(.black, for: .normal)
//        logoButton3.setTitleColor(.blue, for: .highlighted)
//        logoButton3.setTitleColor(.red, for: .selected)
//
////        logoButton3.setImage(UIImage(named: "number-3.png"), for: .normal)
//        logoButton3.addTarget(self, action: #selector(logoEventTouchUpInside(_:)), for: .touchUpInside)
//        view.addSubview(logoButton3)
//
//        let resultButton: UIButton = UIButton(type: UIButtonType.custom)
//        resultButton.frame = CGRect(x: 10, y: 330, width: 72, height: 72)
//        resultButton.setTitle("결과", for: .normal)
//        resultButton.tag = 4
//        resultButton.setTitleColor(.black, for: .normal)
//        resultButton.setTitleColor(.blue, for: .highlighted)
//        resultButton.setTitleColor(.red, for: .selected)
//
////        resultButton.setImage(UIImage(named: "results.png"), for: .normal)
//        resultButton.addTarget(self, action: #selector(result(_:)), for: .touchUpInside)
//        view.addSubview(resultButton)

        let myView: ProfileView = ProfileView()
        self.view.addSubview(myView)
        
        
        
    }
    
//    @objc func logoEventTouchUpInside(_ sender: UIButton) {
//        print(sender.tag)
//        if sender.isSelected == false {
//            selectedBtn?.isSelected = false
//            sender.isSelected = true
//            selectedBtn = sender
//        }
//    }
//
//    @objc func result(_ sender: UIButton)
//    {
////        guard sBtn = selectedBtn else { return }
////        resultTextLb.text = String(sBtn.tag)
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

