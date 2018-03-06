//
//  ViewController.swift
//  MyMainProject
//
//  Created by 구민회 on 28/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

let cellHeight: CGFloat = 65

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!  //weak로 하는 것이 좋다!
    
    lazy var friendList:[UserModel] = MainDataCenter.sharedInstance.friendListModel
    
    //MARK: - LIfe Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: - Seque process
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("shouldPerformSegue")
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare")
        
        if let cell = sender as? MainCell, let nextVC = segue.destination as? DetailViewController {
            nextVC.userData = cell.cellData
        }
    }
}

//MARK: - TableView Data Source
extension ViewController: UITableViewDataSource, UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return MainDataCenter.sharedInstance.friendListCount
        return friendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainCell
        //cell.cellData = MainDataCenter.sharedInstance.friendData(with: indexPath.row)
        cell.cellData = friendList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellHeight
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //let cell = tableView.cellForRow(at: indexPath) as! MainCell
        //cell.cellData
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
