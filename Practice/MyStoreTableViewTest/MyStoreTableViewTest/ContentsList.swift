//
//  ContentsList.swift
//  MyStoreTableViewTest
//
//  Created by 구민회 on 2018. 2. 22..
//  Copyright © 2018년 mobileandsmile. All rights reserved.
//

import Foundation

class ContentsList {
    var thumbnail: String?          // 음식 사진
    var title: String?              // 가게 이름
    var review: Int?             // 최신 리뷰 갯수 표시
    var ceoReply: Int?           // 최근 사장님 댓글 갯수 표시
    var rating: Int?             // 평점 표시
    var directSettlement: Bool?   // 바로 결제 표시
    var metSettlement: Bool?      // 만나서 결제 표시
}
