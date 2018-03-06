//
//  MyStoreTableViewController.swift
//  MyStoreTableViewTest
//
//  Created by 구민회 on 2018. 2. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import UIKit

class MyStoreTableViewController: UITableViewController {
    
    
    // imageFileName, 상점이름, 평점, 리뷰수, 댓글수, 바로결제 bool, 만나서결제 bool
    var dataSet = [("img01.jpeg","엄마네 상추 튀김", 3, 10, 20, true, true),
                   ("img02.jpeg","오리엔탈101", 3, 20, 30, true, false),
                   ("img03.jpeg","고속도로 휴게소 우동", 3, 10, 20, true, true),
                   ("img04.jpeg","소문난이웃집 즉석떡볶이 본점", 5, 3, 120, true, true),
                   ("img05.jpeg","신전떡볶이 인하대점", 3, 5, 60, true, false),
                   ("img06.jpeg","이색떡볶이 본점", 0, 7, 20, false, true),
                   ("img07.jpeg","24시 사천불떡볶이", 6, 10, 10, false, false),
                   ("img08.jpeg","동대문엽기떡볶이", 3, 10, 20, true, true),
                   ("img09.jpeg","오떡 주안점", 4, 20, 40, true, true)]
    
    lazy var list: [ContentsList] = {
        var dataList = [ContentsList]()
        
        for (imageFileName, storeName, rating, numberOfReview, numberOfCeoReply, directPayBool, metPayBool) in self.dataSet {
            let itemVO = ContentsList()
            
            itemVO.thumbnail = imageFileName
            itemVO.title = storeName
            itemVO.rating = rating
            itemVO.review = numberOfReview
            itemVO.ceoReply = numberOfCeoReply
            itemVO.directSettlement = directPayBool
            itemVO.metSettlement = metPayBool
            
            dataList.append(itemVO)
        }
        return dataList
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

//         Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = false

//         Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataSet.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let row = self.list[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCustomTableViewCell
        
        cell.itemImage.image = UIImage(named: row.thumbnail!)
        cell.rateImage.image = UIImage(named: row.ratingToImage(rating)!)
        cell.storeTitleLabel?.text = row.title
        cell.reviewLabel?.text = row.countNumberOfReview(review)
        cell.ceoReplyLabel?.text = row.countNumberOfCeoReply(ceoReply)
        cell.directSettlementLabel?.text = row.isTrue(directSettlement)
        cell.metSettlementLabel?.text = row.isTrue(metSettlement)
        
        return cell
    }
    
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택한 행은 \(indexPath.row)입니다.")
    }
}
