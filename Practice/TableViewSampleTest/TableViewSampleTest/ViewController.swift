//
//  ViewController.swift
//  TableViewSampleTest
//
//  Created by 구민회 on 2018. 2. 21..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let friendList: [String] = ["친구1","친구2","친구3","친구4","친구5","친구6","친구7"]
    let sectionList: [String] = ["첫번째 Section - ", "두번째 Section - ", "세번째 Section - "]
    var rowList: [String] = [ ]
    //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.register(<#T##cellClass: AnyClass?##AnyClass?#>, forCellReuseIdentifier: <#T##String#>)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.register(MyTableViewCell.self, forCellReuseIdentifier: "myCell")
        view.addSubview(tableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    //MARK: - required Method for TableView(numberOfReowsinSection, cellForRowAt)
    
    //required
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            print("numberOfRowsInSection_0")
            return 100
        } else {
            print("numberOfRowsInSection_else")
            return 100
        }
    }
    //required
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let myCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! MyTableViewCell
            myCell.textLabel?.text = "myCell : \(indexPath.row)"
            print("MyCell-cellForRow, \(indexPath.row)")
            return myCell
        } else {
            let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = "\(indexPath.row)"
            print("cellForRow, \(indexPath.row)")
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        let returnString: String = "\(sectionList[section]) \(section)"
        print("let returnString: String = \(sectionList[section]) \(section)")
        return returnString
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50
        } else {
            return 100
        }
    }
}

