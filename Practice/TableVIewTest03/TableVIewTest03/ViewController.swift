//
//  ViewController.swift
//  TableVIewTest03
//
//  Created by 구민회 on 07/03/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var data: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 0...100 {
            data.append("\(i)")
        }
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellResueIdentifier") as! MyTableViewCell
        let text = data[indexPath.row]
        cell.textLabel?.text = text
        cell.titleLb?.text = text
        return cell
    }
}

