//
//  ViewController.swift
//  MainProjectTest01
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

let cellHeight: CGFloat = 65

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!

    //var cellData: UserModel?
    lazy var friendList: [UserModel] = MainDataCenter.sharedInstance.friendListModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MainDataCenter.sharedInstance.friendListCount
    }
    
    // tableView DataSource
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainCell
        cell?.cellData = friendList[indexPath.row]
        return cell!
        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? MainCell
////        cell.cellData = MainDataCenter.sharedInstance.friendData(with: indexPath.row)
//        cell?.cellData = friendList[indexPath.row]
//        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell  = sender as? MainCell,
            let nextVC = segue.destination as? DetailViewController {
            nextVC.userData = cell.cellData
        }
    }
}

