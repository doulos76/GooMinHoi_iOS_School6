//
//  DiaryCell.swift
//  DayGramTest
//
//  Created by dave on 18/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import UIKit

class DiaryCell: UITableViewCell {
    @IBOutlet weak var contents: UILabel!           // 메모 내용
    @IBOutlet weak var dayOfTheWeek: UILabel!       // 요일 정보
    @IBOutlet weak var dateOfMonth: UILabel!        // 날짜 정보
    @IBOutlet weak var noneWriteImage: UIImageView! // 일기 없는 날 표기를 위한 이미지
}
