//
//  ViewController.swift
//  TableViewTest05
//
//  Created by dave on 03/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  let list: [Int] = [ 0, 1, 2, 3, 4, 5]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
    cell?.textLabel = list[inde]
    return cell!
  }
  
}
