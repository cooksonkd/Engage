//
//  NewsAPI.swift
//  Engage
//
//  Created by Keenan Cookson on 2019/07/24.
//  Copyright © 2019 Keenan Cookson. All rights reserved.
//

import Foundation

struct NewsAPI {
    static let host = "newsapi.org"
    static let path = "/v2/top-headlines"
    static let scheme = "https"
    
    enum ParameterKey: String {
        case country = "country"
        case category = "category"
        case sources = "sources"
        case searchKeyword = "q"
        case pageSize = "pageSize"
        case page = "page"
        case apiKey = "apiKey"
    }
    
    enum Country: String {
        case southAfrica = "za"
        case unitedStates = "us"
    }
    
    enum Category: String {
        case business = "business"
        case entertainment = "entertainment"
        case general = "general"
        case health = "health"
        case science = "science"
        case sports = "sports"
        case technology = "technology"
    }
}
