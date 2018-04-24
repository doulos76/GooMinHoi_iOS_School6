//
//  APIClient.swift
//  CollectionViewTest2
//
//  Created by dave on 17/04/2018.
//  Copyright © 2018 dave. All rights reserved.
//

import Foundation

struct APIClient {
    
    static func getAudiobooksAPI(completion: @escaping (AudioBookJSON?) -> void) {
        let url = URL("https://rss.itunes.apple.com/api/v1/us/audiobooks/top-audiobooks/10/explicit/json")
    }
}
