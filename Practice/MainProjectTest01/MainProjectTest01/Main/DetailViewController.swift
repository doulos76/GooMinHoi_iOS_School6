//
//  DetailViewController.swift
//  MainProjectTest01
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var userData: UserModel?
    
    @IBOutlet weak var bgImgView: UIImageView!
    @IBOutlet weak var profileImgView: UIImageView!
    @IBOutlet weak var nickNameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        if let userData = userData {
            //UI Data Update
            bgImgView.image = UIImage(named: userData.backgroundImageUrl)
            profileImgView.image = UIImage(named: userData.profileImageUrl)
            nickNameLabel.text = userData.nickName
            descriptionLabel.text = userData.statusDescription
            phoneNumberLabel.text = userData.phoneNumber
            emailLabel.text = userData.email
        }
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        profileImgView.layer.cornerRadius = profileImgView.frame.size.width / 2
        profileImgView.clipsToBounds = true
        profileImgView.layer.borderColor = UIColor.black.cgColor
        profileImgView.layer.borderWidth = 1
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
