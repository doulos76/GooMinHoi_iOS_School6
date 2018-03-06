//
//  MusicAlbumDataModel.swift
//  MainProject
//
//  Created by 구민회 on 26/02/2018.
//  Copyright © 2018 mobileandsmile. All rights reserved.
//

import Foundation


let album:Dictionary<String,Any> =
    ["albumInfo":["albumTitle":"2집 Oh!",
                  "artist":"소녀시대",
                  "genre":"댄스"],
     "songList":[["songTitle":"Oh!",
                  "trackNum":1,
                  "artist":"소녀시대",
                  "writer":"김정배",
                  "playTime":12340,
                  "playURL":"http://music.naver.com/123"],
                 ["songTitle":"Show! Show! Show!",
                  "trackNum":2,
                  "artist":"소녀시대",
                  "writer":"김부민",
                  "playTime":10130,
                  "playURL":"http://music.naver.com/124"],
                 ["songTitle":"웃자 (Be Happy)",
                  "trackNum":4,
                  "artist":"소녀시대",
                  "writer":"이트라이브",
                  "playTime":12134,
                  "playURL":"http://music.naver.com/126"]
        ]
]

enum Genre: String {
    case Dance = "댄스"
    case Classic = "클래식"
    case Ballad = "발라드"
    case Jazz = "재즈"
    case Hiphop = "힙합"
}



struct AlbumDataModel {
    var albumTitle: String
    var artist: String
    var genre: Genre
    
    init? (dic: [String:String])
    {
        guard let title = dic["albumTitle"] else { return nil }
        guard let artist = dic["artist"] else { return nil }
        guard let genre = dic["genre"] else { return nil }
        
        self.albumTitle = title
        self.artist = artist
        
        
        self.genre = Genre(rawValue: genre)!
        
//        if let genreTemp = dic["genre"] {
//            genre = Genre(rawValue: genreTemp)
//        }
    }
}

struct SongData {
    var songTitle: String
    var trackNumber: Int
    var artist: String
    var playTime: Int
    var playURL: String
    
    init?(dataDic: [String:Any]) {
        guard let title = dataDic["songTitle"] as? String else { return nil }
        guard let trackNumber = dataDic["trackNumber"] as? Int else { return nil }
        guard let artist = dataDic["artist"] as? String else { return nil }
        guard let playTime = dataDic["playTime"] as? Int else { return nil }
        guard let playURL = dataDic["playURL"] as? String else { return nil }
        
        self.songTitle = title
        self.trackNumber = trackNumber
        self.artist = artist
        self.playTime = playTime
        self.playURL = playURL
    }
}

struct MusicAlbumDataModel {
    var albumInfo: AlbumDataModel
    var songList: [SongData] = []
    
    init?(dataDic:[String:Any])
    {
        guard let infoDic = dataDic["albumInfo"] as? [String : Any] else {return nil}
        albumInfo = AlbumDataModel(dic: infoDic as! [String : String])!
        
        guard let list = dataDic["songList"] as? [[String : Any]] else {return nil}
        for songDic in list {
            songList.append(SongData(dataDic: songDic)!)
        }
    }
}








