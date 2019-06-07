//
//  Router.swift
//  NeteaseMusic
//
//  Created by 阿卡琳 on 2019/6/7.
//  Copyright © 2019 阿卡琳. All rights reserved.
//

import Foundation

enum Location: Equatable {
    case nowPlaying
    case discover
    case timeline
    case localMusic
    case playlist(Int)
    case album(Int)
    case artist(Int)
    case search(String)
    case preferences
}

class Router {
    var location = Location.nowPlaying {
        didSet {
            print(location)
        }
    }

    var history: [Location] = []
    var future: [Location] = []

    static let router = Router()

    private init() {}

    func forward() {
        if let to = future.popLast() {
            history.append(location)
            location = to
        }
    }

    func back() {
        if let to = history.popLast() {
            future.append(location)
            location = to
        }
    }

    func go(to: Location) {
        if to != location {
            future.removeAll()
            history.append(location)
            location = to
        } else {
            refresh()
        }

    }

    func refresh() {
        print("refresh")
    }
}
