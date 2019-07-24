//
//  NetworkConstants.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

enum NetworkConstants: String {
    case getTopHeadlinesBaseUrl
    case newsAPIKey
    case scheme
    case host
    case path
    
    func value() -> String {
        switch self {
        case .getTopHeadlinesBaseUrl:
            return "https://newsapi.org/v2/top-headlines"
        case .newsAPIKey:
            return "0e18fe09898b4c638a04cb943c9d9d1e"
        case .scheme:
            return "https"
        case .host:
            return "newsapi.org"
        case .path:
            return "/v2/top-headlines"
        }
    }
}
