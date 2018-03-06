//
//  ViewController.swift
//  TableViewTest2
//
//  Created by 구민회 on 2018. 2. 21..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var friendList: [String] = ["friend1", "friend2", "friend3", "friend4", "friend5", "friend6", "friend7", "friend8"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mainTableView: UITableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        mainTableView.dataSource = self
        mainTableView.delegate = self
        mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.view.addSubview(mainTableView)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = friendList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as! NextViewController
        var tempText = friendList[indexPath.row]
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
}


//    var friendList: [String] = ["이소룡", "이연걸","전지현","송윤아","지성","James Dean","구본승","수지"]
//let mainTableView: UITableView = UITableView(frame: self.view.bounds, style: .plain)
//mainTableView.dataSource = self
//mainTableView.delegate = self
//mainTableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//self.view.addSubview(mainTableView)
//func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//    return friendList.count
//}
//
//func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//    cell.textLabel?.text = friendList[indexPath.row]
//    return cell
//}

