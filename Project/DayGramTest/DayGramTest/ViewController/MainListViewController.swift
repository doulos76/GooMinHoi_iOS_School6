//
//  MainListViewController.swift
//  DayGramTest
//
//  Created by dave on 18/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class MainListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  // AppDelegate Object의 참조 정보를 읽어 옴.
  let appDelegate = UIApplication.shared.delegate as! AppDelegate
  
  //MARK: - Property
  @IBOutlet weak var diaryListTableView: UITableView!
  @IBOutlet weak var mainToolBar: UIToolbar!
  
  
  // MARK: View Life Cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  override func viewWillAppear(_ animated: Bool) {
    self.diaryListTableView.reloadData()    // Device Screen에 ViewController 가 나타날 때 호출되는 메서드
  }
  
  
  func makeMainToolBar(_ sender: Any) {
    
  }
  
  @IBAction func selectMonthButton(_ sender: Any) {
    
  }
  
  @IBAction func selectYearButton(_ sender: Any) {
    
  }
  
  @IBAction func writeDiaryButton(_ sender: Any) {
    guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "DiaryViewController") else {
      return
    }
    uvc.modalTransitionStyle = UIModalTransitionStyle.coverVertical
    self.present(uvc, animated: true, completion: nil)
  }
  
  @IBAction func viewModeSelectBtton(_ sender: Any) {
    
  }
  
  @IBAction func moveToSettingButton(_ sender: Any) {
    guard let uvc = self.storyboard?.instantiateViewController(withIdentifier: "SettingViewController") else {
      return
    }
    uvc.modalTransitionStyle = .coverVertical
    self.present(uvc, animated: true, completion: nil)
  }
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let count = self.appDelegate.diaryList.count
    return count
    //return 30 // 전체 갯수가 28~31 임, 달별로 이니까 이것이 맞지 않나? 그 날에 관한 날수를 표기하는 것이 맞을 듯.(Date 함수로 마지막 날 알아내서 쓰는 것!!!)
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let row = self.appDelegate.diaryList[indexPath.row]
    let cellId = row.image == nil ? "tableStyleCell" : "textStyleCell"
    let cell = diaryListTableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! DiaryCell
    cell.contents?.text = row.diaryContents
    return cell
    
  }
}




