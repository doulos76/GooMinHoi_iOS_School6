//
//  NextViewController.swift
//  TableViewTest2
//
//  Created by 구민회 on 2018. 2. 21..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class NextViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var titleLabel: UILabel?
    var newfriendList: [String] = ["newfriend1", "newfriend2", "fnewriend3", "newfriend4", "newfriend5", "newfriend6", "newfriend7", "friend8"]

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel = UILabel()
        titleLabel?.text = "123"
        titleLabel?.frame = CGRect(x: self.view.frame.size.width / 2, y: self.view.frame.size.height / 2, width: 200, height: 20)
        titleLabel?.textColor = UIColor.black
        titleLabel?.font = UIFont.systemFont(ofSize: 20)
        self.view.addSubview(titleLabel!)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newfriendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = newfriendList[indexPath.row]
        return cell
    }
}
